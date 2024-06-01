SELECT p.name, COUNT(*) AS bookings
FROM TripDatas t
INNER JOIN Places p ON t.place_id = p.place_id
WHERE p.city = 'Pondicherry' and p.type='within city'
GROUP BY p.place_id
ORDER BY bookings DESC
LIMIT 1;
