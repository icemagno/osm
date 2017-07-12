#  Cria os estilos e publica as camadas
#  
#	NOTA: 	OS NOMES DOS ARQUIVOS SLD PRECISAM TER O MESMO NOME DAS VIEWS/TABELAS 
#			EXISTENTES NO BANCO DE DADOS
#

#
# /opt/apache-tomcat-9.0.0.M17/webapps/geoserver/data/workspaces/apolo/styles

installdir=/var/lib/tomcat9/webapps/osmope/
restapi=http://localhost/osmope/rest
login=admin:geoservercasnav@#$
workspace=claten
store=clatendb
#symboldir=$installdir/data/workspaces/$workspace/styles/symbols/

	
#-------------------------------
# create layers
# view_aerovias_decea
curl -v -u $login -XPOST -H "Content-type: text/xml" \
    -d "<featureType><name>view_aerovias_decea</name><title>Aerovias - DECEA</title></featureType>" \
    $restapi/workspaces/$workspace/datastores/$store/featuretypes?recalculate=nativebbox,latlonbbox

# associate the style with the layer as the default style
  curl -v -u $login -XPUT -H "Content-type: text/xml" \
    -d "<layer><enabled>true</enabled><defaultStyle><name>line</name><workspace>$workspace</workspace></defaultStyle></layer>" \
    $restapi/layers/$workspace:view_aerovias_decea
-------------------------------	

# view_areas_eac_decea
curl -v -u $login -XPOST -H "Content-type: text/xml" \
    -d "<featureType><name>view_areas_eac_decea</name><title>Areas do Espaço Aereo Condicionado</title></featureType>" \
    $restapi/workspaces/$workspace/datastores/$store/featuretypes?recalculate=nativebbox,latlonbbox

# associate the style with the layer as the default style
  curl -v -u $login -XPUT -H "Content-type: text/xml" \
    -d "<layer><enabled>true</enabled><defaultStyle><name>espaco_aereo_condicionado</name><workspace>$workspace</workspace></defaultStyle></layer>" \
    $restapi/layers/$workspace:view_areas_eac_decea
-------------------------------	

# view_areas_eac_perigosas
curl -v -u $login -XPOST -H "Content-type: text/xml" \
    -d "<featureType><name>view_areas_eac_perigosas</name><title>Areas Perigosas do Espaço Aereo Condicionado</title></featureType>" \
    $restapi/workspaces/$workspace/datastores/$store/featuretypes?recalculate=nativebbox,latlonbbox

# associate the style with the layer as the default style
  curl -v -u $login -XPUT -H "Content-type: text/xml" \
    -d "<layer><enabled>true</enabled><defaultStyle><name>espaco_aereo_condicionado</name><workspace>$workspace</workspace></defaultStyle></layer>" \
    $restapi/layers/$workspace:view_areas_eac_perigosas
-------------------------------	

# view_areas_eac_proibidas
curl -v -u $login -XPOST -H "Content-type: text/xml" \
    -d "<featureType><name>view_areas_eac_proibidas</name><title>Areas Proibidas do Espaço Aereo Condicionado</title></featureType>" \
    $restapi/workspaces/$workspace/datastores/$store/featuretypes?recalculate=nativebbox,latlonbbox

# associate the style with the layer as the default style
  curl -v -u $login -XPUT -H "Content-type: text/xml" \
    -d "<layer><enabled>true</enabled><defaultStyle><name>espaco_aereo_condicionado</name><workspace>$workspace</workspace></defaultStyle></layer>" \
    $restapi/layers/$workspace:view_areas_eac_proibidas
-------------------------------	
	
# view_areas_eac_restritas
curl -v -u $login -XPOST -H "Content-type: text/xml" \
    -d "<featureType><name>view_areas_eac_restritas</name><title>Areas Restritas do Espaço Aereo Condicionado</title></featureType>" \
    $restapi/workspaces/$workspace/datastores/$store/featuretypes?recalculate=nativebbox,latlonbbox

# associate the style with the layer as the default style
  curl -v -u $login -XPUT -H "Content-type: text/xml" \
    -d "<layer><enabled>true</enabled><defaultStyle><name>espaco_aereo_condicionado</name><workspace>$workspace</workspace></defaultStyle></layer>" \
    $restapi/layers/$workspace:view_areas_eac_restritas
-------------------------------	

# view_areas_sigilosas_md
curl -v -u $login -XPOST -H "Content-type: text/xml" \
    -d "<featureType><name>view_areas_sigilosas_md</name><title>Areas Sigilosas das Forças Armadas</title></featureType>" \
    $restapi/workspaces/$workspace/datastores/$store/featuretypes?recalculate=nativebbox,latlonbbox

# associate the style with the layer as the default style
  curl -v -u $login -XPUT -H "Content-type: text/xml" \
    -d "<layer><enabled>true</enabled><defaultStyle><name>area_sigilosa_forcas</name><workspace>$workspace</workspace></defaultStyle></layer>" \
    $restapi/layers/$workspace:view_areas_sigilosas_md
-------------------------------	

# view_areas_sigilosas_eb
curl -v -u $login -XPOST -H "Content-type: text/xml" \
    -d "<featureType><name>view_areas_sigilosas_eb</name><title>Areas Sigilosas do Exercito Brasileiro</title></featureType>" \
    $restapi/workspaces/$workspace/datastores/$store/featuretypes?recalculate=nativebbox,latlonbbox

# associate the style with the layer as the default style
  curl -v -u $login -XPUT -H "Content-type: text/xml" \
    -d "<layer><enabled>true</enabled><defaultStyle><name>area_sigilosa_forcas</name><workspace>$workspace</workspace></defaultStyle></layer>" \
    $restapi/layers/$workspace:view_areas_sigilosas_eb
-------------------------------	

# view_areas_sigilosas_fab
curl -v -u $login -XPOST -H "Content-type: text/xml" \
    -d "<featureType><name>view_areas_sigilosas_fab</name><title>Areas Sigilosas da Forca Aerea Brasileira</title></featureType>" \
    $restapi/workspaces/$workspace/datastores/$store/featuretypes?recalculate=nativebbox,latlonbbox

# associate the style with the layer as the default style
  curl -v -u $login -XPUT -H "Content-type: text/xml" \
    -d "<layer><enabled>true</enabled><defaultStyle><name>area_sigilosa_forcas</name><workspace>$workspace</workspace></defaultStyle></layer>" \
    $restapi/layers/$workspace:view_areas_sigilosas_fab
-------------------------------	


# view_areas_sigilosas_mb
curl -v -u $login -XPOST -H "Content-type: text/xml" \
    -d "<featureType><name>view_areas_sigilosas_mb</name><title>Areas Sigilosas Marinha do Brasil</title></featureType>" \
    $restapi/workspaces/$workspace/datastores/$store/featuretypes?recalculate=nativebbox,latlonbbox

# associate the style with the layer as the default style
  curl -v -u $login -XPUT -H "Content-type: text/xml" \
    -d "<layer><enabled>true</enabled><defaultStyle><name>area_sigilosa_forcas</name><workspace>$workspace</workspace></defaultStyle></layer>" \
    $restapi/layers/$workspace:view_areas_sigilosas_mb
#-------------------------------	
