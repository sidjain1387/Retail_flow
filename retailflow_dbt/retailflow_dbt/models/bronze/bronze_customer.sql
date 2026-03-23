{{ config(materialized='view', schema='BRONZE') }}

SELECT
    customer_id,
    first_name,
    last_name,
    email,
    phone,
    city,
    state,
    country,
    region,
    segment,
    created_date,
    CURRENT_TIMESTAMP() AS ingested_at
FROM {{ source('raw_retailflow', 'dim_customer') }}