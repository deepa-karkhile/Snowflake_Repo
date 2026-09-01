{{ config(
materialized="incremental",
unique_key ='id',
incremental_strategy= "merge"
) }}
select * from {{source('sales_raw', 'raw_order')}} limit 15