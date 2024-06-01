USE tripplanner;
SELECT  COUNT(*) AS inquiries
FROM Country c
INNER JOIN Placess p ON c.country_id = p.country_id
WHERE c.country_id=1 and p.name in ('Kasi', 'Ayodhya', 'Puri')
HAVING inquiries >= 5
ORDER BY inquiries DESC;

