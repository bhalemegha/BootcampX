SELECT t.name AS teacher, c.name AS cohort
FROM assistance_requests AS a
JOIN teachers AS t
ON t.id = a.teacher_id
JOIN students AS s
ON s.id = a.student_id
JOIN cohorts AS c
ON c.id = s.cohort_id
where c.name = 'JUL02'
GROUP BY c.name, t.name
ORDER BY teacher;
