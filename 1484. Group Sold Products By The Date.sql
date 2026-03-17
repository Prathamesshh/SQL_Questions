Select sell_date, 
    COUNT(distinct product) as num_sold ,
    GROUP_CONCAT(distinct product order by product asc separator ',') as products
from activities 
group by sell_date
order by sell_date asc
