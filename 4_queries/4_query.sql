SELECT AVG(a.completed_at - a.started_at) AS average_assistance_request_duration 
FROM assistance_requests AS a;
