SELECT c.name, count(s.cohort_id) as student_count 
FROM students as s
JOIN cohorts as c
ON s.cohort_id = c.id
GROUP by s.cohort_id, c.name
HAVING count(s.cohort_id) >= 18
ORDER BY student_count;
