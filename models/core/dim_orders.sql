select orders.order_id,
orders.customer_id,
payment.amount
from {{ref ('stg_jaffle_shop_orders')}} orders
left join {{ ref('stg_stripe_payment')}} payment on orders.order_id = payment.order_id