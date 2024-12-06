With stg_users as (

SELECT
    userid,
    CONCAT(CONCAT(firstname,' '), lastname) as customer_name,
    COnCAT(state,city) as address   
FROM
    "sample_data_dev"."tickit"."users"
)

select * from stg_users