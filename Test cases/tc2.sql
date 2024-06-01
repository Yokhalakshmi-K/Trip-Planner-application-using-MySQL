use tripplanner;
SELECT COUNT(*) FROM placess as p inner join tripsplan AS t on p.place_id=t.place_id
 where p.name='Ayodhya' and t.booking_count>2000;