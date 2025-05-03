-- If the customer's preferred delivery date is the same as the order date, then the order is called immediate; otherwise, it is called scheduled.
--The first order of a customer is the order with the earliest order date that the customer made. It is guaranteed that a customer has precisely one first order.
--Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.
--The result format is in the following example.

with cust as(
    select customer_id, MIN(order_date) as first_order
    from delivery
    group by customer_id),
cust2 as(
    select c.*, d.customer_pref_delivery_date as deliver_date,
        case 
            when c.first_order = d.customer_pref_delivery_date then 1 
            else 2
        end as same_day
    from cust c join delivery d on c.customer_id = d.customer_id and c.first_order = d.order_date)
select round((select count(*) from cust2 where same_day = 1)/count(*)*100,2) as immediate_percentage
from cust2

