SELECT c.name AS name, SUM(completed_at - started_at) AS average_assistance_time
FROM assistance_requests AS a
JOIN students AS s
ON s.id = a.student_id
JOIN cohorts AS c
ON c.id = s.cohort_id
GROUP BY c.name
ORDER BY average_assistance_time;
