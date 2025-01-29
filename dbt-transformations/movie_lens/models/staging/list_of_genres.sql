select distinct genres
from {{ source('raw_dset', 'movies') }}