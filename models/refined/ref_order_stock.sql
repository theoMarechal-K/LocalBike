SELECT orders.store_id
    , orders.store_name
    , orders.product_id
    , orders.quantity as order_quantity
    , stocks.quantity as stocks_quantity

FROM {{ref("int_sales_ordered_item_per_shop")}} as orders

LEFT JOIN {{ref("int_production_products_stock")}} as stocks
ON orders.store_id = stocks.store_id and orders.product_id = stocks.product_id