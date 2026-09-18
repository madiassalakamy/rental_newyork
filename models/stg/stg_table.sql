with raw_newyork as (
    select * 
    from {{ source('raw_newyork', 'rental_newyork') }}
)
select * exclude('tripduration','gender'),
round(tripduration/ 60) as duration_min,
case
when gender=1 then 'Homme'
when gender=2 then 'Femme' 
else 'Inconnu'
end as genre,
count(1) over(partition by gender) as nbre_gender
from raw_newyork
