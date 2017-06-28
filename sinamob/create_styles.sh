#  Cria os estilos e publica as camadas
#  
#	NOTA: 	OS NOMES DOS ARQUIVOS SLD PRECISAM TER O MESMO NOME DAS VIEWS/TABELAS 
#			EXISTENTES NO BANCO DE DADOS

installdir=/var/lib/tomcat9/webapps/osmope
restapi=http://localhost:8080/osmope/rest
login=admin:geoserver
workspace=osm
store=openstreetmap
symboldir=$installdir/data/workspaces/$workspace/styles/symbols/

for sldfile in *.sld; do

  # strip the extension from the filename to use for layer/style names
  layername=`basename $sldfile .sld`

  # create a new featuretype in the store, assuming the table
  # already exists in the database and is named $layername
  # this step automatically creates a layer of the same name
  # as a side effect
  curl -v -u $login -XPOST -H "Content-type: text/xml" \
    -d "<featureType><name>$layername</name></featureType>" \
    $restapi/workspaces/$workspace/datastores/$store/featuretypes?recalculate=nativebbox,latlonbbox

  # create an empty style object in the workspace, using the same name
  curl -v -u $login -XPOST -H "Content-type: text/xml" \
    -d "<style><name>$layername</name><filename>$sldfile</filename></style>" \
    $restapi/workspaces/$workspace/styles

  # upload the SLD definition to the style
  curl -v -u $login -XPUT -H "Content-type: application/vnd.ogc.sld+xml" \
    -d @$sldfile \
    $restapi/workspaces/$workspace/styles/$layername

  # associate the style with the layer as the default style
  curl -v -u $login -XPUT -H "Content-type: text/xml" \
    -d "<layer><enabled>true</enabled><defaultStyle><name>$layername</name><workspace>$workspace</workspace></defaultStyle></layer>" \
    $restapi/layers/$workspace:$layername

done

mkdir $symboldir
cp symbols/* $symboldir
