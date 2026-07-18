# Write your MySQL query statement below

/*
select email from person 
group by email 
having count(email) > 1
*/


SELECT DISTINCT(p1.email) from Person p1, Person p2
where p1.id <> p2.id AND p1.email = p2.email;