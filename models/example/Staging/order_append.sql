{{ config(
    materialized='incremental',
    incremental_strategy='append'
) }}

SELECT *
FROM {{ source('sales_raw', 'raw_order') }} limit 10