SELECT sum(duration) AS total_duration
FROM assignment_submissions AS assignment
JOIN students AS s 
ON s.id = assignment.student_id
JOIN cohorts AS c 
ON c.id = s.cohort_id
where c.name = 'FEB12';
