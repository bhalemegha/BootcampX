SELECT COUNT(a.id) AS total_assistances, s.name
FROM assistance_requests AS a
JOIN students AS s
ON s.id = a.student_id
WHERE s.name = 'Elliot Dickinson'
GROUP BY s.name;
