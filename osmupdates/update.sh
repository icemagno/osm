#!/bin/bash

cd /home/apolo/install_osm/osmupdate/

export PGPASSWORD=admin

NOW=$(date +"%m-%d-%Y")
TIME=$(date +"%T")

export JAVA_HOME="/opt/jdk1.8.0_66/"
export JAVACMD_OPTIONS="-Djava.io.tmpdir=/home/apolo/install_osm/osmupdate/tmp -Dhttp.proxyHost=proxy-1dn.mb -Dhttp.proxyPort=6060 -Dhttp.proxyUser=06902331758 -Dhttp.proxyPassword=nextstep" 

export JAVA_OPTS="-Dhttp.proxyHost=proxy-1dn.mb -Dhttp.proxyPort=6060 -Dhttp.proxyUser=06902331758 -Dhttp.proxyPassword=nextstep"

export JAVA_OPTIONS="-Dhttp.proxyHost=proxy-1dn.mb -Dhttp.proxyPort=6060 -Dhttp.proxyUser=06902331758 -Dhttp.proxyPassword=nextstep"


export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/jdk1.8.0_66/bin/"


rm -f /home/apolo/install_osm/osmupdate/update.osm.gz
rm -f /home/apolo/install_osm/osmupdate/update.unique.osm.gz

echo "$NOW $TIME - Baixando atualizacoes..."

/home/apolo/osmosis/bin/osmosis -v 3 --rri workingDirectory=/home/apolo/install_osm/osmupdate/ --wxc /home/apolo/install_osm/osmupdate/update.osm.gz

{
if [ ! -f /home/apolo/install_osm/osmupdate/update.osm.gz ]; then
    echo "Arquivo de update nao encontrado. Saindo."
    exit 0
fi
}

#TIME=$(date +"%T")
#echo "$TIME - Parando Tomcat..."
#/opt/osm/apache-tomcat-9.0.0.M17/bin/shutdown.sh

TIME=$(date +"%T")
echo "$TIME - Criando delta..."

nice gzip -d -c /home/apolo/install_osm/osmupdate/update.osm.gz | nice /home/apolo/osmosis/bin/osmosis --read-xml-change file=/dev/stdin --simplify-change --write-xml-change file=- | nice gzip -9 -c > /home/apolo/install_osm/osmupdate/update.unique.osm.gz

TIME=$(date +"%T")
echo "$TIME - Importando para o banco..."

/usr/local/bin/osm2pgsql --append --number-processes 8 --flat-nodes /home/apolo/install_osm/osmupdate/flatnodes/osm_flat_nodes.db  --latlong --verbose --hstore --slim --cache 20000 --database osm --username postgres --host 127.0.0.1 --style /home/apolo/install_osm/osmupdate/default.style /home/apolo/install_osm/osmupdate/update.unique.osm.gz 

TIME=$(date +"%T")
echo "$TIME - Atualizando as visoes..."

psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"water\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"water-outline\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"route-turning-circles\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"route-tunnels\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"wetland\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"route-line\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"route-fill\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"route-bridge-5\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"route-bridge-4\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"route-bridge-3\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"route-bridge-2\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"route-bridge-1\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"route-bridge-0\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"placenames-medium\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"parking-area\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"forest\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"park\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"highway-label\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"grass\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"building\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"beach\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"amenity-areas\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"agriculture\"; "
psql -U postgres -h localhost -d osm -H -c "refresh materialized view layers.\"aero-poly\"; "

TIME=$(date +"%T")
echo "$TIME - Termino da atualizacao de visoes. Iniciando VACUUM."

psql -U postgres -h localhost -d osm -H -c 'VACUUM FULL VERBOSE ANALYZE'


TIME=$(date +"%T")
echo "$TIME - FIM."


#TIME=$(date +"%T")
#echo "$TIME - Iniciando Tomcat..."
#/opt/osm/apache-tomcat-9.0.0.M17/bin/startup.sh







