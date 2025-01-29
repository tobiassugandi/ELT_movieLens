select
    timestamp_converted,
    rating
from {{ ref('ratings__timest_converted') }}
where movieId = 858 -- Godfather, The (1972)
order by timestamp_converted