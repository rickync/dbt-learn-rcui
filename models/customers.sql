select customers.customer_id,
customers.first_name,
customers.last_name,
sum(orders.amount)
from {{ ref('stg_jaffle_shop_customers') }} customers
left join {{ ref('orders') }} orders on customers.customer_id=orders.customer_id
group by 1,2,3