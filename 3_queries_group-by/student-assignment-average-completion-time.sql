SELECT s.name, AVG(a.duration) AS average_assignment_duration, 
	AVG(assignment.duration) AS average_estimated_duration
FROM students AS s
JOIN assignment_submissions AS a
ON s.id = a.student_id
JOIN assignments AS assignment
ON assignment.id = a.assignment_id
WHERE s.end_date IS NULL
GROUP BY s.name
having AVG(a.duration) <  AVG(assignment.duration);
