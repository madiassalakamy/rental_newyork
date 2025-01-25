select "start station id",date_trunc('day',starttime) ,count(*)
from {{ ref('fact_rental') }}
group by 1,2
order by 1