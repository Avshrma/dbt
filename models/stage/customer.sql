{{ config( alias= 'customer',
    schema= 'STAGE',
    database= 'RAW' 
)}}

SELECT * 
FROM {{ source('RAW_SOURCE', 'CUSTOMER') }} 
where C_NATIONKEY Not in (14) 