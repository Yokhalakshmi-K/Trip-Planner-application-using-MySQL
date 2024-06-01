use tripplanner;
select city from country as c inner join placess as p on c.country_id=p.country_id where c.name in('India');