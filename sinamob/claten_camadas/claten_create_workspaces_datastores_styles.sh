#!/bin/bash

#  Cria os estilos e publica as camadas
#  
#	NOTA: 	OS NOMES DOS ARQUIVOS SLD PRECISAM TER O MESMO NOME DAS VIEWS/TABELAS 
#			EXISTENTES NO BANCO DE DADOS
#

#
# /opt/apache-tomcat-9.0.0.M17/webapps/geoserver/data/workspaces/apolo/styles

#installdir=/var/lib/tomcat9/webapps/osmope
#restapi=http://localhost:8080/osmope/rest
#login=admin:geoserver
#workspace=osm
#store=openstreetmap
#symboldir=$installdir/data/workspaces/$workspace/styles/symbols/

installdir=/var/lib/tomcat9/webapps/osmope/
restapi=http://localhost/osmope/rest
login=admin:geoservercasnav@#$
workspace=claten
store=clatendb
#symboldir=$installdir/data/workspaces/$workspace/styles/symbols/

# create workspace
curl -v -u $login -XPOST -H "Content-type: text/xml" \
  -d "<workspace><name>$workspace</name></workspace>" \
  $restapi/workspaces

#-------------------------------
# create datastore
curl -v -u $login -XPOST -T clatendb.xml -H "Content-type: text/xml" \
  $restapi/workspaces/$workspace/datastores


#-------------------------------
# create styles
# area_sigilosa_forcas
curl -v -u $login -XPOST -H "Content-type: text/xml" \
    -d "<style><name>area_sigilosa_forcas</name><filename>area_sigilosa_forcas.sld</filename></style>" \
    $restapi/workspaces/$workspace/styles

curl -v -u $login -XPUT -H "Content-type: application/vnd.ogc.sld+xml" \
  -d @area_sigilosa_forcas.sld \
  $restapi/workspaces/$workspace/styles/area_sigilosa_forcas	
	
# espaco_aereo_condicionado
curl -v -u $login -XPOST -H "Content-type: text/xml" \
    -d "<style><name>espaco_aereo_condicionado</name><filename>espaco_aereo_condicionado.sld</filename></style>" \
    $restapi/workspaces/$workspace/styles

curl -v -u $login -XPUT -H "Content-type: application/vnd.ogc.sld+xml" \
  -d @espaco_aereo_condicionado.sld \
  $restapi/workspaces/$workspace/styles/espaco_aereo_condicionado	

