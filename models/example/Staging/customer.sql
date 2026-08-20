
    select
    try cast(id as int) as id,
    first_name,
    last_name
    from {{sources('datafeed_shared_schema','customerdata')}}