SELECT students.name as student,students.end_date, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
GROUP BY students.name, students.end_date
HAVING students.end_date IS NULL;
