with raw_newyork as (
    select * 
    from {{ source('raw_newyork', 'rental_newyork') }}
)
select * exclude('tripduration','gender'),
round(tripduration/ 60) as duration_min,
case
when gender=1 then 'homme'
when gender=2 then 'femme' 
else 'inconnu'
end as genre
from raw_newyork
