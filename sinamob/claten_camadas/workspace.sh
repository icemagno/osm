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


# create workspace
curl -v -u $login -XPOST -H "Content-type: text/xml" \
  -d "<workspace><name>$workspace</name></workspace>" \
  $restapi/workspaces
