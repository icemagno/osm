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
/*
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
*/
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

drop materialized view if exists sinamob."onu_p"; 
create materialized view sinamob."onu_p" AS (
select 
	osm_id,
	name,
	tags->'addr:street' as street,
	tags->'alt_name' as alt_name,
	tags->'addr:city' as city,
	tags->'diplomatic' as diplomatic,
	tags->'country' as country,
	office,
	way
from planet_osm_point where tags->'target' = 'UN' or tags->'country' = 'UN'
);
CREATE INDEX "onu_p_way_idx" ON sinamob."onu_p" USING gist (way);
CREATE INDEX "onu_p_id_idx" ON sinamob."onu_p" USING btree (osm_id);
/* ------------------------------------------------------------------------------------- */
drop materialized view if exists sinamob."onu_a"; 
create materialized view sinamob."onu_a" AS (
select 
	osm_id,
	name,
	tags->'addr:street' as street,
	tags->'alt_name' as alt_name,
	tags->'addr:city' as city,
	tags->'diplomatic' as diplomatic,
	tags->'country' as country,
	office,
	way
from planet_osm_polygon where tags->'target' = 'UN' or tags->'country' = 'UN'
);
CREATE INDEX "onu_a_way_idx" ON sinamob."onu_a" USING gist (way);
CREATE INDEX "onu_a_id_idx" ON sinamob."onu_a" USING btree (osm_id);
/* ------------------------------------------------------------------------------------- */

drop materialized view if exists sinamob."hospitals"; 
create materialized view sinamob."hospitals" AS (
select 
	osm_id,
	name,
	amenity,
	emergency,
	tags->'phone' as phone,
	way
from planet_osm_polygon where amenity in ('hospital','doctors','clinic')
);
CREATE INDEX "hospitals_way_idx" ON sinamob."hospitals" USING gist (way);
CREATE INDEX "hospitals_id_idx" ON sinamob."hospitals" USING btree (osm_id);
/* ------------------------------------------------------------------------------------- */

