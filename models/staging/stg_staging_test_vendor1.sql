{{ config(materialized="table", schema="your_dataset_name_here") }}
with
    base_ as (

        select * from {{ source("staging", "TAXI_GREEN_NEW") }} where vendorid = 1

    )

select *
from base_
