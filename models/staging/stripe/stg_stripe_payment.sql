with source_payment as (

    select * from {{ source('stripe', 'payment') }}

),

renamed_payment as (

    select
        id,
        "orderID" as order_id,
        "paymentMethod" as payment_method,
        amount
    from source_payment

)

select * from renamed_payment
