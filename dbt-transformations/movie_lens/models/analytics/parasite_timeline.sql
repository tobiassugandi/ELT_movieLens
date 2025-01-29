select
    DATE_TRUNC(timestamp_converted, month) as rating_month,
    AVG(rating) as avg_monthly_rating
from {{ ref('ratings__timest_converted') }}
where movieId = 202439 -- Parasite (2019)
group by rating_month
order by rating_month