SELECT COUNT(*) AS bookings
FROM Trips_plan t
INNER JOIN Place_s p ON t.place_id = p.place_id
WHERE p.name = 'Kurukshetra' AND t.booking_count > 1000;
