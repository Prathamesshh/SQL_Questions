select product_name, sum(unit) as unit
from Orders o left join Products p on o.product_id = p.product_id
where order_date regexp '^2020-02-'
group by product_name
having sum(unit) >= 100
