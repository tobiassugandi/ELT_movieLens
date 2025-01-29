select * 
from {{ ref('tenk_movie_ratings')}}
order by avg_rating desc
limit 10