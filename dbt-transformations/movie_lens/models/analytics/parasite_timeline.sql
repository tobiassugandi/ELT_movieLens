select
    timestamp_converted,
    rating
from {{ ref('ratings__timest_converted') }}
where movieId = 202439 -- Parasite (2019)
order by timestamp_converted