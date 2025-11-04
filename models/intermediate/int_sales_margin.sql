With sales AS (
SELECT *
FROM {{ ref('stg_row__sales') }}
),

product AS (
SELECT*
FROM {{ ref('stg_row__product') }}
)

SELECT
s.date_date,
s.orders_id,
s.product_id,
s.revenue,
s.quantity,
p.purchase_price,
(s.revenue-p.purchase_price) AS margin,
(s.quantity*p.purchase_price) AS purchase_cost
FROM sales AS s
LEFT JOIN product AS p
ON s.product_id=p.products_id