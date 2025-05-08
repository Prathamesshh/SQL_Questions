# Write your MySQL query statement below
select t.id from Weather t
join Weather t1
where datediff(t.recordDate,t1.recordDate)=1 and t.temperature>t1.temperature;
