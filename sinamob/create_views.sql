/*

A consulta abaixo (para pontos) também pega as plataformas...

drop materialized view  if exists sinamob."plataformas";
create materialized view sinamob.plataformas as (

select osm_id, "seamark:information" as information, aeroway, man_made, name, operator, ref, tags->'seamark:platform:category' as category,
 tags->'storage' as storage,  way from planet_osm_point where "seamark:type" = 'platform'

);
*/

/* ------------------------------------------------------------------------------------- */
drop materialized view  if exists sinamob."oleo_gas_areas";
create materialized view sinamob.oleo_gas_areas as (
select 
   osm_id,amenity, man_made, name, operator, "seamark:type" as seamark_type, tags->'type' as type, tags->'industrial' as industrial, landuse, tags->'pump' as pump, tags->'pump:type' as pump_type, tags->'well:type' as well_type, tags->'communication' as communication,
   tags->'pumping_station' as pumping_station, tags->'seamark:platform:category' as seamark_platform_category, tags->'offloading' as offloading,
   tags->'production' as production, tags->'storage' as storage, waterway, "seamark:information" as information, aeroway, tags->'border_type' as border_type, tags->'resource' as "resource", way
 from planet_osm_polygon where
	man_made in ('fuel_deport', 'fuel_depot', 'storage_tank', 'tank', 'oil_tank', 'fuel_storage_tank', 'fuel_tank', 'floating_storage', 'gasometer', 'gas_cavern', 'resevoir_covered','submarine_cable', 'adit', 'mineshaft', 'oil_terminal', 'regulating_station','distribution_station', 'regulating_station','distribution_station','pumping_station','oil_pump','gas_station','pipeline','pipeline_station','gas_station','gas_valve', 'pipeline_marker','pipelinemarker','petroleum_well','offshore_platform','oil_well','pumping_rig',
	'rig','pumpjack','injection_well','oil_drilling','oilfield','oil_field','gasfield','gas_field','flare','flare_stack','flarestack') or
	
	landuse in ('railway', 'resevoir', 'landfill', 'well','wellsite','industrial','quarry','surface_mining') or water='resevoir' or
	
	tags->'generator:source' ='hydro' or  
	
	(  boundary='maritime' and tags->'border_type' = 'eez' )  or (  boundary='maritime' and tags->'border_type' = 'contiguous' ) or 

	tags->'industrial' in ('oil_depot', 'oil_storage', 'oil_tank_farm', 'oil_sands', 'flare_site','refinery','oil_refinery','well_cluster','wellsite','hydrocarbon_field','oil_field','oil','gas') or
	
	"seamark:type" = 'ferry_route' or "seamark:type" = 'cable_overhead' or "seamark:type" = 'cable_submarine' or  "seamark:type" = 'pipeline_submarine' or "seamark:type" = 'platform' or tags->'oil' = 'station' or tags->'gas' = 'station' or tags->'gas' = 'substation'
	or waterway in ('offshore_field','dam') or "seamark:harbour:category" = 'tanker' 
    
	
);
CREATE INDEX "oleo_gas_areas_way_idx" ON sinamob."oleo_gas_areas" USING gist (way);
CREATE INDEX "oleo_gas_areas_id_idx" ON sinamob."oleo_gas_areas" USING btree (osm_id);


drop materialized view  if exists sinamob."oleo_gas_linhas";
create materialized view sinamob.oleo_gas_linhas as (
select osm_id,
   amenity, man_made, name, operator, "seamark:type" as seamark_type, tags->'type' as type, tags->'industrial' as industrial, landuse, tags->'pump' as pump, tags->'pump:type' as pump_type, tags->'well:type' as well_type, tags->'communication' as communication,
   tags->'pumping_station' as pumping_station, tags->'seamark:platform:category' as seamark_platform_category, tags->'offloading' as offloading,
   tags->'production' as production, tags->'storage' as storage, waterway, "seamark:information" as information, aeroway, tags->'border_type' as border_type, tags->'resource' as "resource",way
 from planet_osm_line where
	man_made in ('fuel_deport', 'fuel_depot', 'storage_tank', 'tank', 'oil_tank', 'fuel_storage_tank', 'fuel_tank', 'floating_storage', 'gasometer', 'gas_cavern', 'resevoir_covered','submarine_cable', 'adit', 'mineshaft', 'oil_terminal', 'regulating_station','distribution_station', 'regulating_station','distribution_station','pumping_station','oil_pump','gas_station','pipeline','pipeline_station','gas_station','gas_valve', 'pipeline_marker','pipelinemarker','petroleum_well','offshore_platform','oil_well','pumping_rig',
	'rig','pumpjack','injection_well','oil_drilling','oilfield','oil_field','gasfield','gas_field','flare','flare_stack','flarestack') or
	
	landuse in ('railway', 'resevoir', 'landfill', 'well','wellsite','industrial','quarry','surface_mining') or water='resevoir' or
	
	tags->'generator:source' ='hydro' or 
	
	(  boundary='maritime' and tags->'border_type' = 'eez' )  or (  boundary='maritime' and tags->'border_type' = 'contiguous' ) or 

	tags->'industrial' in ('oil_depot', 'oil_storage', 'oil_tank_farm', 'oil_sands', 'flare_site','refinery','oil_refinery','well_cluster','wellsite','hydrocarbon_field','oil_field','oil','gas') or
	
	"seamark:type" = 'ferry_route' or "seamark:type" = 'cable_overhead' or "seamark:type" = 'cable_submarine' or  "seamark:type" = 'pipeline_submarine' or "seamark:type" = 'platform' or tags->'oil' = 'station' or tags->'gas' = 'station' or tags->'gas' = 'substation'
	or waterway in ('offshore_field','dam') or "seamark:harbour:category" = 'tanker' 
    
	
);
CREATE INDEX "oleo_gas_linhas_way_idx" ON sinamob."oleo_gas_linhas" USING gist (way);
CREATE INDEX "oleo_gas_linhas_id_idx" ON sinamob."oleo_gas_linhas" USING btree (osm_id);


drop materialized view  if exists sinamob."oleo_gas_pontos";
create materialized view sinamob.oleo_gas_pontos as (
select osm_id,
   amenity, man_made, name, operator, "seamark:type" as seamark_type, tags->'type' as type, tags->'industrial' as industrial, landuse, tags->'pump' as pump, tags->'pump:type' as pump_type, tags->'well:type' as well_type, tags->'communication' as communication, railway,
   tags->'pumping_station' as pumping_station, tags->'seamark:platform:category' as seamark_platform_category, tags->'offloading' as offloading,
   tags->'production' as production, tags->'storage' as storage, waterway, "seamark:information" as information, aeroway, tags->'border_type' as border_type, tags->'resource' as "resource",way
 from planet_osm_point where
	man_made in ('fuel_deport', 'fuel_depot', 'storage_tank', 'tank', 'oil_tank', 'fuel_storage_tank', 'fuel_tank', 'floating_storage', 'gasometer', 'gas_cavern', 'resevoir_covered','submarine_cable', 'adit', 'mineshaft', 'oil_terminal', 'regulating_station','distribution_station', 'regulating_station','distribution_station','pumping_station','oil_pump','gas_station','pipeline','pipeline_station','gas_station','gas_valve', 'pipeline_marker','pipelinemarker','petroleum_well','offshore_platform','oil_well','pumping_rig',
	'rig','pumpjack','injection_well','oil_drilling','oilfield','oil_field','gasfield','gas_field','flare','flare_stack','flarestack') or
	
	landuse in ('railway', 'resevoir', 'landfill', 'well','wellsite','industrial','quarry','surface_mining') or water='resevoir' or
	
	tags->'generator:source' ='hydro' or 
	
	(  boundary='maritime' and tags->'border_type' = 'eez' )  or (  boundary='maritime' and tags->'border_type' = 'contiguous' ) or

	tags->'industrial' in ('oil_depot', 'oil_storage', 'oil_tank_farm', 'oil_sands', 'flare_site','refinery','oil_refinery','well_cluster','wellsite','hydrocarbon_field','oil_field','oil','gas') or
	
	"seamark:type" = 'ferry_route' or "seamark:type" = 'cable_overhead' or "seamark:type" = 'cable_submarine' or  "seamark:type" = 'pipeline_submarine' or "seamark:type" = 'platform' or tags->'oil' = 'station' or tags->'gas' = 'station' or tags->'gas' = 'substation'
	or waterway in ('offshore_field','dam') or "seamark:harbour:category" = 'tanker' 
    
	
);
CREATE INDEX "oleo_gas_pontos_way_idx" ON sinamob."oleo_gas_pontos" USING gist (way);
CREATE INDEX "oleo_gas_pontos_id_idx" ON sinamob."oleo_gas_pontos" USING btree (osm_id);



/* ------------------------------------------------------------------------------------- */


drop materialized view if exists sinamob."rios_esp_line"; 
create materialized view sinamob."rios_esp_line" AS (
 SELECT osm_id,
    name,
    tags->'description' AS description,
    tags->' intermittent' AS intermittent,
    tags->'seasonal' AS seasonal,
    tags->'boat' AS boat,
    way
   FROM planet_osm_line
  WHERE waterway = 'river' and (name = 'Ubangi' or name = 'Congo')
);
CREATE INDEX "rios_esp_line_way_idx" ON sinamob."rios_esp_line" USING gist (way);
CREATE INDEX "rios_esp_line_id_idx" ON sinamob."rios_esp_line" USING btree (osm_id);

/* ------------------------------------------------------------------------------------- */

drop materialized view if exists sinamob."rios_esp_a"; 
create materialized view sinamob."rios_esp_a" AS (
 SELECT osm_id,
    name,
    tags->'description' AS description,
    tags->' intermittent' AS intermittent,
    tags->'seasonal' AS seasonal,
    tags->'boat' AS boat,
    way
   FROM planet_osm_polygon
  WHERE waterway in ('river','riverbank','stream','canal')
and name like '%Ubangi%' and name like '%Congo%'
);
CREATE INDEX "rios_esp_a_way_idx" ON sinamob."rios_esp_a" USING gist (way);
CREATE INDEX "rios_esp_a_id_idx" ON sinamob."rios_esp_a" USING btree (osm_id);


/* ------------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------- */
/* ------------------------------------------------------------------------------------- */
drop materialized view if exists sinamob."heliporto_a"; 
create materialized view sinamob."heliporto_a" AS (
	select
	   osm_id,
	   name,
	   operator, 
	   tags->'addr:city' as city,
	   tags->'addr:country' as country,
	   tags->'addr:state' as state,
	   tags->'icao' as icao, 
	   tags->'iata' as iata, 
	   tags->'rooftop' as rooftop, 
	   tags->'ifr' as ifr,
	   tags->'designation' as designation, 
	   tags->'faa' as faa, 
	   way from planet_osm_polygon where aeroway in ('helipad','heliport') 
	ORDER BY osm_id ASC
);
CREATE INDEX "heliponto_a_way_idx" ON sinamob."heliporto_a" USING gist (way);
CREATE INDEX "heliponto_a_id_idx" ON sinamob."heliporto_a" USING btree (osm_id);

/* ------------------------------------------------------------------------------------- */

drop materialized view if exists sinamob."heliporto_p"; 
create materialized view sinamob."heliporto_p" AS (
	select
	   osm_id,
	   name,
	   operator, 
	   tags->'addr:city' as city,
	   tags->'addr:country' as country,
	   tags->'addr:state' as state,
	   tags->'icao' as icao, 
	   tags->'iata' as iata, 
	   tags->'rooftop' as rooftop, 
	   tags->'ifr' as ifr,
	   tags->'designation' as designation, 
	   tags->'faa' as faa, 
	   way from planet_osm_point where aeroway in ('helipad','heliport') 
	ORDER BY osm_id ASC
);
CREATE INDEX "heliponto_p_way_idx" ON sinamob."heliporto_p" USING gist (way);
CREATE INDEX "heliponto_p_id_idx" ON sinamob."heliporto_p" USING btree (osm_id);

/* ------------------------------------------------------------------------------------- */

drop materialized view if exists sinamob."aeroporto_a"; 
create materialized view sinamob."aeroporto_a" AS (
select
   osm_id,
   name,
   tags->'addr:city' as city,
   tags->'addr:country' as country,
   tags->'addr:state' as state,
   tags->'aerodrome' as use,
   tags->'aerodrome:type' as type,
   tags->'iata' as iata,
   tags->'icao' as icao,
   tags->'ifr' as ifr,
   tags->'name:en' as name_en,
   tags->'official_name' as official_name,
   military,
   operator,
   way
   from planet_osm_polygon where aeroway in ('airport','aerodrome') or military='airfield'  
);
CREATE INDEX "aeroporto_a_way_idx" ON sinamob."aeroporto_a" USING gist (way);
CREATE INDEX "aeroporto_a_id_idx" ON sinamob."aeroporto_a" USING btree (osm_id);

/* ------------------------------------------------------------------------------------- */

drop materialized view if exists sinamob."aeroporto_p"; 
create materialized view sinamob."aeroporto_p" AS (
select
   osm_id,
   name,
   tags->'addr:city' as city,
   tags->'addr:country' as country,
   tags->'addr:state' as state,
   tags->'aerodrome' as use,
   tags->'aerodrome:type' as type,
   tags->'iata' as iata,
   tags->'icao' as icao,
   tags->'name:en' as name_en,
   tags->'official_name' as official_name,
   operator,
   way
   from planet_osm_point where aeroway in ('airport','aerodrome') 
);
CREATE INDEX "aeroporto_p_way_idx" ON sinamob."aeroporto_p" USING gist (way);
CREATE INDEX "aeroporto_p_id_idx" ON sinamob."aeroporto_p" USING btree (osm_id);

/* ------------------------------------------------------------------------------------- */

drop materialized view if exists sinamob."areas_militares_p"; 
create materialized view sinamob."areas_militares_p" AS (
select 
	osm_id,
	name, 
	military, 
	tags->'building' as building,
	tags->'description' as description,
	tags->'addr:city' as city,
	tags->'addr:state' as state,
	tags->'addr:province' as province,
	tags->'alt_name' as alt_name,
	way 
from planet_osm_point where landuse='military'
);
CREATE INDEX "areas_militares_p_way_idx" ON sinamob."areas_militares_p" USING gist (way);
CREATE INDEX "areas_militares_p_id_idx" ON sinamob."areas_militares_p" USING btree (osm_id);
/* ------------------------------------------------------------------------------------- */

drop materialized view if exists sinamob."areas_militares_a"; 
create materialized view sinamob."areas_militares_a" AS (
select 
	osm_id,
	name, 
	military, 
	tags->'building' as building,
	tags->'description' as description,
	tags->'addr:city' as city,
	tags->'addr:state' as state,
	tags->'addr:province' as province,
	tags->'alt_name' as alt_name,
	way 
from planet_osm_polygon where landuse='military'
);
CREATE INDEX "areas_militares_a_way_idx" ON sinamob."areas_militares_a" USING gist (way);
CREATE INDEX "areas_militares_a_id_idx" ON sinamob."areas_militares_a" USING btree (osm_id);

/* ------------------------------------------------------------------------------------- */

drop materialized view if exists sinamob."hospitals"; 
create materialized view sinamob."hospitals" AS (
select 
	osm_id,
	name,
	amenity,
	tags->'emergency' as emergency,
	tags->'phone' as phone,
	way
from planet_osm_polygon where amenity in ('hospital','doctors','clinic')
);
CREATE INDEX "hospitals_way_idx" ON sinamob."hospitals" USING gist (way);
CREATE INDEX "hospitals_id_idx" ON sinamob."hospitals" USING btree (osm_id);
/* ------------------------------------------------------------------------------------- */
drop materialized view if exists sinamob."embassy"; 
create materialized view sinamob."embassy" AS (
select 
    osm_id,
    name,
    tags->'country' as country,
    tags->'name:en' as name_en,
    tags->'target' as target,
    tags->'alt_name' as alt_name,
    tags->'diplomatic' as diplomatic,
    way
from planet_osm_point where amenity = 'embassy'
);
CREATE INDEX "embassy_way_idx" ON sinamob."embassy" USING gist (way);
CREATE INDEX "embassy_id_idx" ON sinamob."embassy" USING btree (osm_id);
/* ------------------------------------------------------------------------------------- */
drop materialized view if exists sinamob."railroads"; 
create materialized view sinamob."railroads" AS (
select 
	osm_id,
	name,
	railway,
	oneway,
	tags->'gauge' as gauge,
	tags->'eletrified' as eletrified,
	tags->'layer' as layer,
	tags->'tracks' as tracks,
	tunnel,
	tags->'frequency' as frequency,
	operator,
	tags->'voltage' as voltage,
	tags->'passenger_lines' as passenger_lines,
	tags->'source' as source,
	tags->'usage' as usage,
	way 
from planet_osm_line where
	railway in('tram','rail','subway','light_rail','abandoned'  )
);
CREATE INDEX "railroads_way_idx" ON sinamob."railroads" USING gist (way);
CREATE INDEX "railroads_id_idx" ON sinamob."railroads" USING btree (osm_id);
/* ------------------------------------------------------------------------------------- */
drop materialized view if exists sinamob."railroads_stations"; 
create materialized view sinamob."railroads_stations" AS (
select 
	osm_id,
	name,
	tags->'public_transport' as public_transport,
	tags->'railway' as railway,
	tags->'station' as station,
	tags->'subway' as is_subway,
	tags->'train' as is_train,
	tags->'tram' as is_tram,
	way 
from planet_osm_point where
	railway in('tram','rail','subway','light_rail','abandoned','station')
);
CREATE INDEX "railroads_stations_way_idx" ON sinamob."railroads_stations" USING gist (way);
CREATE INDEX "railroads_stations_id_idx" ON sinamob."railroads_stations" USING btree (osm_id);
/* ------------------------------------------------------------------------------------- */
drop materialized view if exists sinamob."ports"; 
create materialized view sinamob."ports" AS (
	select 
		osm_id,
		name,
		landuse,
		operator,
		tags->'industrial' as is_industrial,
		tags->'cargo' as cargo,
		military,
		tags->'port:type' as port_type,
		tags->'harbour:type' as harbour_type,
		tags->'port' as port,
		way 
	from planet_osm_point 
	where tags->'industrial'='port' or landuse in('port','harbour') or military='naval_base'
);
CREATE INDEX "ports_way_idx" ON sinamob."ports" USING gist (way);
CREATE INDEX "ports_id_idx" ON sinamob."ports" USING btree (osm_id);
/* ------------------------------------------------------------------------------------- */
drop materialized view if exists sinamob."government"; 
create materialized view sinamob."government" AS (
select 
	osm_id,
	name,
	tags->'government' as government,
	admin_level,
	tags->'phone' as phone,
	tags->'addr:street' as street,
	tags->'addr:city' as city,
	way
from planet_osm_point where office='government'
);
CREATE INDEX "government_way_idx" ON sinamob."government" USING gist (way);
CREATE INDEX "government_id_idx" ON sinamob."government" USING btree (osm_id);
/* ------------------------------------------------------------------------------------- */
drop materialized view if exists sinamob."river_lines"; 
CREATE MATERIALIZED VIEW sinamob."river_lines" AS (
 SELECT osm_id,
    name,
    tags->'description' AS description,
    tags->' intermittent' AS intermittent,
    tags->'seasonal' AS seasonal,
    tags->'boat' AS boat,
    way
   FROM planet_osm_line
  WHERE waterway in ('river','riverbank','stream','canal')
 );
CREATE INDEX "river_lines_way_idx" ON sinamob."river_lines" USING gist (way);
CREATE INDEX "river_lines_id_idx" ON sinamob."river_lines" USING btree (osm_id);
/* ------------------------------------------------------------------------------------- */
drop materialized view if exists sinamob."river_a"; 
CREATE MATERIALIZED VIEW sinamob."river_a" AS (
 SELECT osm_id,
    name,
    tags->'description' AS description,
    tags->' intermittent' AS intermittent,
    tags->'seasonal' AS seasonal,
    tags->'boat' AS boat,
    way
   FROM planet_osm_polygon
  WHERE waterway = in ('river','riverbank','stream','canal')
 );
 CREATE INDEX "river_a_lines_way_idx" ON sinamob."river_lines_a" USING gist (way);
CREATE INDEX "river_a_lines_id_idx" ON sinamob."river_lines_a" USING btree (osm_id);
/* ------------------------------------------------------------------------------------- */