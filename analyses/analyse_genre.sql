select "start station id",
count(case when genre='homme' then 1 else 0 end) as nombre_homme,
count(case when genre='femme' then 1 else 0 end) as nombre_femme,
count(case when genre='inconnu' then 1 else 0 end) as nombre_inconnu
from {{ ref('fact_rental') }}
group by 1