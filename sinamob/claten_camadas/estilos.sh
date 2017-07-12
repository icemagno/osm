#!/bin/bash

#  Cria os estilos e publica as camadas
#  
#	NOTA: 	OS NOMES DOS ARQUIVOS SLD PRECISAM TER O MESMO NOME DAS VIEWS/TABELAS 
#			EXISTENTES NO BANCO DE DADOS
#

#


installdir=/var/lib/tomcat9/webapps/osmope/
restapi=http://localhost/osmope/rest
login=admin:geoservercasnav@#$
workspace=claten
store=clatendb


#-------------------------------
# create styles
# area_sigilosa_forcas
curl -v -u $login -XPOST -H "Content-type: text/xml" \
    -d "<style><name>area_sigilosa_forcas</name><filename>area_sigilosa_forcas.sld</filename></style>" \
    $restapi/workspaces/$workspace/styles

curl -v -u $login -XPUT -H "Content-type: application/vnd.ogc.sld+xml" \
  -d @area_sigilosa_forcas.sld \
  $restapi/workspaces/$workspace/styles/area_sigilosa_forcas	
