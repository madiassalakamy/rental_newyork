with station_information as (select distinct "start station id" as station_id,
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
)
select station_id,
any_value(station_name) as station_name,
any_value(station_latitude) as station_latitude,
any_value(station_longitude) as station_longitude,
from station_information
where station_id is not null
group by station_id