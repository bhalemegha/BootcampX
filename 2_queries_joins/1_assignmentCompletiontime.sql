SELECT sum(duration)
FROM assignment_submissions AS assignment
JOIN students AS s 
ON s.id = assignment.student_id
where s.name = 'Ibrahim Schimmel';
