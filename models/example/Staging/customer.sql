<<<<<<< HEAD
select
    try_cast(id as int)as id,
    first_name,
    last_name
    from {{source('datafeed_shared_schema','customerdata')}}
=======
    select
    try_cast(id as int) id ,
    first_name,
    last_name
    from {{source('sales_raw','customerdata')}}


>>>>>>> ec063c6c724ec800bfffedb3b64e7c3b0a0cdbcd
