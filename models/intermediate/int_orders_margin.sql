SELECT
    orders_id
    , date_date
    , sum(revenue) as total_revenue
    , sum(quantity) as total_quantity
    , sum(purchase_cost) as total_purchase_cost
    , sum(margin) as total_margin
FROM {{ ref('int_sales_margin') }}
GROUP BY orders_id, date_date
ORDER by orders_id DESC