--Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.
--Return the result table in any order.
--The query result format is in the following example.

Select date_format(trans_date,'%Y-%m')month,
country, count(id)trans_count,
sum(if(state='approved',1,0))approved_count,
sum(amount)trans_total_amount,
sum(if(state='approved',amount,0))approved_total_amount
from Transactions
group by month, country;
