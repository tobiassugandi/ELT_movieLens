with new_ratings as (
    SELECT
    r.movieId,
    AVG(r.rating) AS avg_rating,
    COUNT(r.rating) AS rating_count
FROM {{ source('raw_dset', 'ratings') }} as r 
GROUP BY r.movieId
HAVING rating_count > 10000
ORDER BY avg_rating DESC
)

SELECT
    r.movieId,
    avg_rating,
    rating_count,
    m.title,
    m.genres
FROM new_ratings as r 
join {{ source('raw_dset', 'movies') }}  as m on r.movieId = m.movieId
ORDER BY avg_rating DESC