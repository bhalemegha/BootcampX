SELECT t.name AS teacher, 
	s.name AS student,
	assignment.name AS assignment,
	(a.completed_at - a.started_at) AS duration
FROM assistance_requests AS a
JOIN assignments AS assignment
ON assignment.id = a.assignment_id
JOIN students AS s
ON s.id = a.student_id
JOIN teachers AS t
ON t.id = a.teacher_id
ORDER BY duration;
