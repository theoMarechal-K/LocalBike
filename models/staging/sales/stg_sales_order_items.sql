SELECT 
    concat(order_id,item_id) as order_item_id
    , order_id
    , item_id
    , product_id
    , quantity
    , list_price
    , discount
FROM {{source('LocalBike','order_items') }}