SELECT COUNT(*) AS registrations
FROM Tripss t
INNER JOIN Place_s p ON t.place_id = p.place_id
WHERE p.name = 'Badarika Ashram'
AND MONTH(t.start_date) = 3
AND YEAR(t.start_date) = 2022;
