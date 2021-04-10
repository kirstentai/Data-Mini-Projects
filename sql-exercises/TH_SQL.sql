-- Write a sql query to count the number of unique users who logged in from
-- both iPhone and web, where iPhone logs and web logs are in distinct relations.

-- * This question does not tell us how iphond and web logs look like
-- * assume iphone: ts | user_id | iphone_sessionid
-- * web: ts | user_id | web_sessionid

-- 1) join iphone and web tables
-- 2) match by day and user_id
-- 3) group by day and count num_user per day

-- results: day | num_users

SELECT DATE_TRUNC('day', i.ts) AS day,
    COUNT(DISTINCT i.user_id) AS num_users
FROM iphone i
JOIN web w
    ON i.user_id = w.user_id
    AND DATE_TRUNC('day', i.ts) = DATE_TRUNC('day', w.ts)
GROUP BY 1
