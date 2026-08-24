    select
    try_cast(id as int) id ,
    first_name,
    last_name
    from {{source('sales_raw','customerdata')}}


