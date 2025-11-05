SELECT *
 FROM {{ ref('stg_row__adwords') }}
 UNION ALL
 SELECT *
 FROM {{ ref('stg_row__bing') }}
 UNION ALL
 SELECT *
 FROM {{ ref('stg_row__criteo') }}
 UNION ALL
 SELECT *
 FROM {{ ref('stg_row__facebook') }}