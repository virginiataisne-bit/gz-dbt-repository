SELECT f.date_date
     ,f.margin
     ,f.average_basket
     ,f.operational_margin
     ,c.ads_cost
     ,c.impression
     ,c.click
     ,f.quantity
     ,f.revenue
     ,f.purchase_cost
     ,f.shipping_fee
     ,f.logcost
     ,f.ship_cost 
     ,SUM(operational_margin-ads_cost) AS ads_margin
FROM {{ ref('int_campaigns_day') }} as c
LEFT JOIN {{ ref('finance_days') }} as f
USING (date_date)
GROUP BY ALL