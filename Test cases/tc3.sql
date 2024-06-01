use tripplanner;
SELECT p.name, COUNT(*) AS bookings
FROM TripDatas t
INNER JOIN Places p ON t.place_id = p.place_id
WHERE p.city = 'Kurukshetra' and p.type='outside city'
GROUP BY p.place_id;
