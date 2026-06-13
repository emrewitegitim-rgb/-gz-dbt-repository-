SELECT
    s.*
    , p.purchase_price
    , {{ purchase_cost('s.quantity', 'p.purchase_price') }} as purchase_cost
    , s.revenue - {{ purchase_cost('s.quantity', 'p.purchase_price') }} as margin
FROM {{ ref("stg_raw__sales") }} as s
JOIN {{ ref('stg_raw__products')}} as p
    USING(products_id)
