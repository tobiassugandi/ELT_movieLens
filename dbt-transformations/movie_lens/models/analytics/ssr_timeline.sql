select
    timestamp_converted,
    rating
from {{ ref('ratings__timest_converted') }}
where movieId = 318 -- Shawshank Redemption
order by timestamp_converted