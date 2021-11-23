SELECT COUNT(a.id) , t.name
FROM assistance_requests AS a
JOIN teachers AS t
ON t.id = a.teacher_id
WHERE t.name = 'Waylon Boehm'
GROUP BY t.name;
