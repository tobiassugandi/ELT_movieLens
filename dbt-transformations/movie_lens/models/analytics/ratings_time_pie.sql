select
    case 
        when timestamp_converted < TIMESTAMP('2000-01-01') then 'before 2000'
        when timestamp_converted < TIMESTAMP('2010-01-01') then '2000-2010'
        when timestamp_converted < TIMESTAMP('2020-01-01') then '2010-2020'
        else 'after 2020'
    end as rating_period,
    count(*) as num_ratings
from {{ ref('ratings__timest_converted') }}
group by rating_period
