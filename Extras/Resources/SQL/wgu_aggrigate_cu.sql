SELECT t.id AS term_id, 
	SUM(c.credit_units) AS total_credit_units,
	COUNT(c.code) as num_courses
FROM terms as t
JOIN courses as c ON t.id = c.term_id
GROUP BY t.id;
