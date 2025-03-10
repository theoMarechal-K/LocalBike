SELECT 
    concat(store_id,product_id) as stocks_id
    , store_id
    , product_id
    , quantity
FROM {{source('LocalBike','stocks') }}