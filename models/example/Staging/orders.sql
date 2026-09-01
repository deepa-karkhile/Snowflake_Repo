{{ config(materialized='table') }}

SELECT
    CAST(id AS INTEGER) AS id,
    order_date,
    user_id,
    status
FROM {{ source('sales_raw', 'raw_order') }}