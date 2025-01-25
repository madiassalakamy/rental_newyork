select max("birth year") age_jeune,
min("birth year") as age_vieux,
avg("birth year") as age_moyenne
from {{ ref('fact_rental') }}