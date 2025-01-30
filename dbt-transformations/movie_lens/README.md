dbt transformations for the movie lens dataset!
- filter movies that have more than 10,000 ratings
    - so that the rating value is of high quality
- provide informations
    - average ratings of each genre
    - time periods when ratings are given
    - highest rated movies rating history

- jinja features used:
    - set variables
    - for loop
    - if 

- dbt tests:
    - non-null
    - unique
    - dbt_utils.expression_is_true