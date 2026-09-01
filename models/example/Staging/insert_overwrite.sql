
{{ config(materialized="incremental",
         incremental_strategy="insert_overwrite",
         
) }}

select * from {{source('sales_raw', 'raw_order')}} limit 25
