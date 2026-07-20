select id,
max(case when month='Jan' then revenue else  NULL end) as Jan_revenue, 
max(case when month='Feb' then revenue else  NULL end) as Feb_revenue,
max(case when month='Mar' then revenue else  NULL end) as Mar_revenue,
max(case when month='Apr' then revenue else  NULL end) as Apr_revenue,
max(case when month='May' then revenue else  NULL end) as may_revenue,
max(case when month='Jun' then revenue else  NULL end) as Jun_revenue,
max(case when month='Jul' then revenue else  NULL end) as Jul_revenue,
max(case when month='Aug' then revenue else  NULL end) as Aug_revenue,
max(case when month='Sep' then revenue else  NULL end) as sep_revenue,
max(case when month='Oct' then revenue else  NULL end) as Oct_revenue,
max(case when month='Nov' then revenue else  NULL end) as Nov_revenue,
max(case when month='Dec' then revenue else  NULL end) as Dec_revenue
From Department
group by id

