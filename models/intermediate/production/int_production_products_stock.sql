SELECT
    stocks.stocks_id
    , stocks.store_id
    , stocks.product_id
    , products.product_name
    , stocks.quantity
    , products.list_price

FROM {{ref('stg_production_stocks')}} as stocks

LEFT JOIN {{ref("stg_production_products")}} as products
ON stocks.product_id = products.product_id