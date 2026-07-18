# Write your MySQL query statement below
select d.name as department, e.name as employee, e.salary as  salary
from employee e 
join department d on e.departmentid = d.id
where salary in(
    select max(salary) 
    from employee
    where departmentid = e.departmentid
    )