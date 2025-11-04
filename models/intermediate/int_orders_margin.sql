WITH sales_margin AS (
    SELECT*
    FROM {{ ref('int_sales_margin') }}
)

SELECT
    orders_id,
    MAX(date_date),
    ROUND(SUM(revenue),2) AS revenue,
    SUM(quantity) AS quantity,
    ROUND(SUM(purchase_cost),2) AS purchase_cost,
    ROUND(SUM(margin),2) AS margin
FROM sales_margin
GROUP BY orders_id