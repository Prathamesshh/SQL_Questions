--Write a solution to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places. 
--In other words, you need to count the number of players that logged in for at least two consecutive days starting from their first login date, then divide that number by the total number of players.

--The result format is in the following example.

select round(count( distinct a2.player_id)/count(distinct a1.player_id),2)as fraction
from Activity a1 
left join(select player_id,min(event_date) as event_date from Activity group by player_id)a2
on a1.player_id=a2.player_id and datediff(a1.event_date,a2.event_date)=1
