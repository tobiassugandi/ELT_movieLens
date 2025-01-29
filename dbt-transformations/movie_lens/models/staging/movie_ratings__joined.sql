with new_ratings as (
    SELECT
    r.movieId,
    AVG(r.rating) AS avg_rating,
    COUNT(r.rating) AS rating_count
FROM {{ source('raw_dset', 'ratings') }} as r 
GROUP BY r.movieId
)

SELECT
    r.movieId,
    m.title,
    m.genres,
    avg_rating,
    rating_count,
FROM new_ratings as r 
join {{ source('raw_dset', 'movies') }}  as m on r.movieId = m.movieId
ORDER BY avg_rating DESC