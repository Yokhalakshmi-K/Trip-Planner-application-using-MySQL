SELECT COUNT(*) AS registrations 
FROM Tripsplan t 
INNER JOIN Placess p ON t.place_id = p.place_id 
 where p.name IN ('Peters Basilica', 'Mecca Masjid');
