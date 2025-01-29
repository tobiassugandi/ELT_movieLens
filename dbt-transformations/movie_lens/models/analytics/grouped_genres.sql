
{% set source_table = "tenk_movie_ratings"%}
{% set genres = [
                    'War',
                    'IMAX',
                    'Crime',
                    'Drama',
                    'Documentary',
                    'Action',
                    'Comedy',
                    'Horror',
                    'Sci-Fi',
                    'Fantasy',
                    'Film-Noir',
                    'Musical',
                    'Mystery',
                    'Romance',
                    'Western',
                    'Children',
                    'Thriller',
                    'Adventure',
                    'Animation',] %}

with 
{% for genre in genres %}
    {{genre.lower().replace('-', '_')}} as (
        select
            '{{genre.lower().replace('-', '_')}}' as genre,
            count(*) as count,
            avg(avg_rating) as avg_rating
        from {{ ref(source_table) }}
        where genres like '%{{genre}}%'
    )
    {% if not loop.last%}
    ,
    {% endif%}
{% endfor %}

{% for genre in genres%}
select * from {{genre.lower().replace('-', '_')}}
{% if not loop.last%} 
union all
{% endif%}
{% endfor%}
order by avg_rating desc
