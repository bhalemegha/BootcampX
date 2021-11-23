SELECT a.id, a.day, a.chapter, a.name, COUNT(ar.id) AS total_requests 
FROM assistance_requests AS ar
JOIN assignments AS a
ON a.id = ar.assignment_id
GROUP BY ar.assignment_id, a.id
ORDER BY total_requests DESC;
