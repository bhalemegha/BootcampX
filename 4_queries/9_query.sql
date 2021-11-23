SELECT AVG(at.averageTime) AS average_total_duration FROM (
SELECT SUM(completed_at - started_at) as averageTime
FROM assistance_requests AS a
JOIN students AS s
ON s.id = a.student_id
JOIN cohorts AS c
ON c.id = s.cohort_id
GROUP BY c.name) AS at;
