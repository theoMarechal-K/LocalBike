SELECT 
    stores.store_id
    , stores.store_name
    , stores.city
    , stores.state
    , orders.order_id
    , order_items.product_id
    , order_items.quantity
    , order_items.list_price - (order_items.list_price * order_items.discount) as price 

FROM {{ref('stg_sales_stores')}} as stores

LEFT JOIN {{ref('stg_sales_orders')}} as orders
ON stores.store_id = orders.store_id

LEFT JOIN {{ref('stg_sales_order_items')}} as order_items
ON order_items.order_id = orders.order_id