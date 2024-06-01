USE tripplanner;
SELECT  *,COUNT(*) AS inquiries
FROM Country c
INNER JOIN Placess p ON c.country_id = p.country_id
WHERE c.name not in ('India') and p.name in ('Peters Basilica','Mecca Masjid')
HAVING inquiries >= 2
ORDER BY inquiries DESC;

