use tripplanner;
SELECT COUNT(*) AS registrations
FROM Tripsplan t
INNER JOIN Placess p ON t.place_id = p.place_id
WHERE p.name = 'Mecca Masjid'
AND MONTH(t.start_date) = 6
AND YEAR(t.start_date) = 2022;