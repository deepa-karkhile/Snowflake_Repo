{{ config(materialized='table') }}

WITH tb1 AS (
    SELECT
        id,
        order_date,
        user_id,
        status
    FROM {{ source('sales_raw', 'raw_order') }}
)

SELECT *
FROM tb1