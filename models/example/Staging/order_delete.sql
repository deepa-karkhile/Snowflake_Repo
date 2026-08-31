
{{ config(materialized="incremental",
         unique_key='id',
         incremental_strategy="delete+insert",
         
) }}

select * from {{source('sales_raw', 'raw_order')}} limit 10
