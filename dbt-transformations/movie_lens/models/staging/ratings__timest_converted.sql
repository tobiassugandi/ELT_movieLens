select 
    r.userId,
    r.movieId,
    r.rating,
    TIMESTAMP_SECONDS(r.timestamp) as timestamp_converted,
FROM
    {{ source('raw_dset', 'ratings') }} as r
    join {{ ref("tenk_movie_ratings")}} as t
    on r.movieId = t.movieId 