/* Write your PL/SQL query statement below */
SELECT S.user_id, ROUND(COUNT(C2.user_id) / COUNT(S.user_id), 2) AS confirmation_rate FROM Signups S
LEFT JOIN Confirmations C1 ON C1.user_id = S.user_id
LEFT JOIN Confirmations C2 ON C1.TIME_STAMP = C2.TIME_STAMP AND C2.action = 'confirmed'
GROUP BY S.user_id;






