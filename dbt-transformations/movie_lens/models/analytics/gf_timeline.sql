select
    DATE_TRUNC(timestamp_converted, month) as rating_month,
    AVG(rating) as avg_monthly_rating
from {{ ref('ratings__timest_converted') }}
where movieId = 858 -- Godfather
group by rating_month
order by rating_month