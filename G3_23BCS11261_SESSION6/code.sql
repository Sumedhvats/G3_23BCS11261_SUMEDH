-- Write your PostgreSQL query statement below

WITH one AS (
SELECT u.name
FROM MovieRating m
JOIN Users u
    ON u.user_id = m.user_id
GROUP BY m.user_id, u.name
ORDER BY COUNT(m.user_id) DESC, u.name ASC
LIMIT 1
),
two AS (
SELECT m.title
FROM MovieRating mr
JOIN Movies m
    ON mr.movie_id = m.movie_id
WHERE created_at < '2020-03-01' AND created_at >= '2020-02-01'
GROUP BY m.title
ORDER BY  AVG(mr.rating) DESC, m.title ASC
LIMIT 1
)

SELECT name AS results FROM one
UNION ALL
SELECT title AS results FROM two

