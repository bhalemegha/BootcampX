SELECT c.name, count(a.id) AS total_submissions
FROM students AS s
JOIN cohorts AS c
ON s.cohort_id = c.id
JOIN assignment_submissions AS a
ON s.id = a.student_id
GROUP BY c.name
ORDER BY total_submissions DESC;
