
drop materialized view  if exists walkability."sustenance";
create materialized view walkability."sustenance" AS (

select 
	pp.osm_id, pp.name, pp.way, pp.amenity 
from 
	public.planet_osm_point pp, layers.admin0_countries cc 
where 
	pp.amenity in ('bar','pub','cafe','bbq','fast_food','drinking_water','food_court','ice_cream','restaurant') and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
);

----------------------------------------------------------------------------------------------------------

drop materialized view  if exists walkability."transportation";
create materialized view walkability."transportation" AS (

select 
	pp.osm_id, pp.name, pp.way, pp.amenity
from 
	public.planet_osm_point pp, layers.admin0_countries cc 
where 
	pp.amenity in ('bicycle_parking', 'bicycle_repair_station', 'bicycle_rental', 'boat_sharing', 'bus_station', 'car_rental', 'car_sharing', 'car_wash', 
	'charging_station', 'ferry_terminal','fuel','grit_bin','motorcycle_parking','parking','parking_entrance','parking_space','taxi') and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
	
);

----------------------------------------------------------------------------------------------------------

drop materialized view  if exists walkability."education";
create materialized view walkability."education" AS (

select 
	pp.osm_id, pp.name, pp.way, pp.amenity
from 
	public.planet_osm_point pp, layers.admin0_countries cc 
where 
	pp.amenity in ('library', 'college', 'kindergarden', 'public_bookcase', 'school', 'music_school', 'driving_school', 'language_school', 'university') and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
	
);

----------------------------------------------------------------------------------------------------------

drop materialized view  if exists walkability."financial";
create materialized view walkability."financial" AS (

select 
	pp.osm_id, pp.name, pp.way, pp.amenity
from 
	public.planet_osm_point pp, layers.admin0_countries cc 
where 
	pp.amenity in ('atm','bank','bureau_de_change') and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
	
);

----------------------------------------------------------------------------------------------------------

drop materialized view  if exists walkability."healthcare";
create materialized view walkability."healthcare" AS (

select 
	pp.osm_id, pp.name, pp.way, pp.amenity
from 
	public.planet_osm_point pp, layers.admin0_countries cc 
where 
	pp.amenity in ('baby_hatch','clinic','dentist','doctors','hospital','nursing_home','pharmacy','social_facility','veterinary','blood_donation') and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
	
);

----------------------------------------------------------------------------------------------------------

drop materialized view  if exists walkability."entertainment_arts_culture";
create materialized view walkability."entertainment_arts_culture" AS (

select 
	pp.osm_id, pp.name, pp.way, pp.amenity
from 
	public.planet_osm_point pp, layers.admin0_countries cc 
where 
	pp.amenity in ('arts_centre','brothel','casino','cinema','community_centre','fountain','gambling','nightclub','planetarium','social_centre', 'stripclub', 'studio', 'swingerclub','theatre') and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
	
);

----------------------------------------------------------------------------------------------------------

drop materialized view  if exists walkability."amenity_others";
create materialized view walkability."amenity_others" AS (

select 
	pp.osm_id, pp.name, pp.way, pp.amenity
from 
	public.planet_osm_point pp, layers.admin0_countries cc 
where 
	pp.amenity in ('animal_boarding','animal_shelter','bench','courthouse','dive_centre','dojo','embassy', 'fire_station','gym','internet_cafe','marketplace','photo_booth','place_of_worship','police','post_box','post_office','prison','recycling','sauna','shower','shelter','telephone','toilets','townhall','vending_machine','waste_basquet','waste_disposal') and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
	
);

----------------------------------------------------------------------------------------------------------

drop materialized view  if exists walkability."tourism";
create materialized view walkability."tourism" AS (

select 
	pp.osm_id, pp.name, pp.way, pp.tags->'tourism' as tourism
from 
	public.planet_osm_point pp, layers.admin0_countries cc 
where 
	pp.tags->'tourism' is not null and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
	
);

----------------------------------------------------------------------------------------------------------

drop materialized view  if exists walkability."shop";
create materialized view walkability."shop" AS (

select 
	pp.osm_id, pp.name, pp.way, pp.tags->'shop' as shop
from 
	public.planet_osm_point pp, layers.admin0_countries cc 
where 
	pp.tags->'shop' is not null and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
	
);

----------------------------------------------------------------------------------------------------------

drop materialized view  if exists walkability."leisure";
create materialized view walkability."leisure" AS (

select 
	pp.osm_id, pp.name, pp.way, pp.tags->'leisure' as leisure
from 
	public.planet_osm_point pp, layers.admin0_countries cc 
where 
	pp.tags->'leisure' is not null and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
	
);

----------------------------------------------------------------------------------------------------------

drop materialized view  if exists walkability."stations";
create materialized view walkability."stations" AS (
select 
	pp.osm_id, pp.name, pp.way, pp.tags->'station' as station, operator, ref, tags->'opening_hours' as opening_hours, railway,
	public_transport, tags->'train'
from 
	public.planet_osm_point pp, layers.admin0_countries cc 
where 
	railway in ('station','tram_stop', 'subway_entrance') and public_transport in('station','stop_position') and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
);

----------------------------------------------------------------------------------------------------------

drop materialized view  if exists walkability."bus_stop";
create materialized view walkability."bus_stop" AS (
select 
	pp.osm_id, pp.name, pp.way, tags->'shelter' as shelter, tags->'bench' as bench
from 
	public.planet_osm_point pp, layers.admin0_countries cc 
where 
	highway = 'bus_stop' and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
);

----------------------------------------------------------------------------------------------------------


drop materialized view  if exists walkability."natural_green";
create materialized view walkability."natural_green" AS (
select 
	pp.osm_id, pp.name, pp.way 
from 
	public.planet_osm_polygon pp, layers.admin0_countries cc 
where 
	"natural" in ('wood','scrub','heath','moor','grassland','grassland') and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
);


----------------------------------------------------------------------------------------------------------
-------------  DAQUI PARA BAIXO N�O FIZ ------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------

drop materialized view  if exists walkability."bus_route";
create materialized view walkability."bus_route" AS (
select 
	pp.osm_id, pp.name, pp.way, pp.tags->'route_name' as route_name, ref, operator, tags->'via' as via,
	tags->'from' as from, tags->'to' as "to" 
from 
	public.planet_osm_line pp, layers.admin0_countries cc 
where 
	route='bus' and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
);


----------------------------------------------------------------------------------------------------------

drop materialized view  if exists walkability."ferry_route";
create materialized view walkability."ferry_route" AS (
select 
	pp.osm_id, pp.name, pp.way, pp.tags->'route_name' as route_name, ref, operator, tags->'via' as via,
	tags->'from' as from, tags->'to' as "to" 
from 
	public.planet_osm_line pp, layers.admin0_countries cc 
where 
	route='ferry' and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
);


----------------------------------------------------------------------------------------------------------

drop materialized view  if exists walkability."tram_line";
create materialized view walkability."tram_line" AS (
select 
	pp.osm_id, pp.name, pp.way
from 
	public.planet_osm_line pp, layers.admin0_countries cc 
where 
	railway='tram' and cc.sovereignt = 'Brasil' and ST_Within( pp.way, cc.geom) 
);

