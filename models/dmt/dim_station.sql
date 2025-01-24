select distinct "start station id" as station_id,
"start station name" as station_name,
"start station latitude" as station_latitude,
"start station longitude" as station_longitude
from {{ ref('stg_table') }}
union 
select distinct "end station id" as station_id,
"end station name" as station_name,
"end station latitude" as station_latitude,
"end station longitude" as station_longitude
from {{ ref('stg_table') }}