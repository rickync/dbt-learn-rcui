select customer.order_id,
customer.customer_id,
payment.amount
from {{ref ('stg_jaffle_shop_orders')}} orders
left join {{ ref('payment')}} payment on orders.order_id = payment."orderID"