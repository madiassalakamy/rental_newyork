select * exclude("start station latitude",
"start station longitude",
"end station latitude",
"end station longitude",
"start station name",
"end station name"
)
from {{ ref('stg_table') }} 