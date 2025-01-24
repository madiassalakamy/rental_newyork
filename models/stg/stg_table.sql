with raw_newyork as (
    select * 
    from {{ source('raw_newyork', 'rental_newyork') }}
)
select * exclude('tripduration','gender'),
round(tripduration/ 60) as duration_min,
case
when gender then 'homme' 
else 'femme'
end as genre
from raw_newyork
