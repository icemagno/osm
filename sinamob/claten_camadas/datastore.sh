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


# create datastore
curl -v -u $login -XPOST -T clatendb.xml -H "Content-type: text/xml" \
  $restapi/workspaces/$workspace/datastores
