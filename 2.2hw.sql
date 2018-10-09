USE poni;
SELECT AVG(av_count)
FROM (
  SELECT users.user_id, IF(sessions.user_id IS NULL, 0, COUNT(*)) AS av_count
  FROM users LEFT JOIN sessions ON users.user_id = sessions.user_id
  GROUP BY users.user_id
) AS ft;
