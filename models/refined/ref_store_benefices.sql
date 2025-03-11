SELECT orders.store_id
    , orders.store_name
    , SUM(orders.price) as order_sales
    , SUM(stocks.list_price) as stocks_price

FROM {{ref("int_sales_ordered_item_per_shop")}} as orders

LEFT JOIN {{ref("int_production_products_stock")}} as stocks
ON orders.store_id = stocks.store_id and orders.product_id = stocks.product_id

GROUP BY orders.store_id, orders.store_name