select distinct bikeid
from {{ ref('stg_table') }}