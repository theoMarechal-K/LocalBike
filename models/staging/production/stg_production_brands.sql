SELECT 
    brand_id
    , brand_name
FROM {{source('LocalBike','brands') }}