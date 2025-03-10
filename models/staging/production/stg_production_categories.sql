SELECT 
    category_id
    , category_name
FROM {{source('LocalBike','categories') }}