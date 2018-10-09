use poni;
SELECT login, SUM(payment_sum) 
FROM users 
JOIN payments ON users.user_id = payments.user_id
GROUP BY users.user_id
ORDER BY  SUM(payment_sum) DESC
LIMIT 3;