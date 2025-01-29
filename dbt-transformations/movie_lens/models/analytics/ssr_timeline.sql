select
    DATE_TRUNC(timestamp_converted, MONTH) as rating_month,
    AVG(rating) as avg_monthly_rating
from {{ ref('ratings__timest_converted') }}
where movieId = 318 -- Shawshank Redemption
group by rating_month
order by rating_month