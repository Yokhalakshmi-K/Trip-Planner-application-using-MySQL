use tripplanner;
CREATE TABLE Customer_Registered (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age int not null,
    phone VARCHAR(15) NOT NULL,
    registration_date DATE NOT NULL
);
CREATE TABLE Country (
    country_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL);
CREATE TABLE Places (
    place_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    country_id INT NOT NULL,
    type varchar(23),
    FOREIGN KEY (country_id) REFERENCES Country(country_id)
);
CREATE TABLE TripDatas (
    trip_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    place_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    booking_count INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer_Registered(customer_id),
    FOREIGN KEY (place_id) REFERENCES Places(place_id)
);
insert into Customer_Registered values(1, 'John Smith',23,  '555-1234',  '2022-01-01'),
(2, 'Jane Doe', 24, '555-5678',  '2022-01-02'),
(3, 'Bob Johnson',24,  '555-9012','2022-01-03'),
(4, 'Samantha Williams', 25, '555-3456',  '2022-01-04'),
(5, 'Mike Brown', 43, '555-7890',  '2022-01-05'),
(6, 'Lisa Davis', 58, '555-2345',  '2022-01-06'),
(7, 'David Lee',34, '555-6789',  '2022-01-07'),
(8, 'Karen Johnson', 50, '555-0123',  '2022-01-08'),
(9, 'Tom Smith',46,  '555-4567',  '2022-01-09'),
(10, 'Emily Jones', 21, '555-8901', '2022-01-10'),
(11, 'Chris Wilson',  20,'555-2345',  '2022-01-11'),
(12, 'Sarah Brown',27,  '555-6789',  '2022-01-12'),
(13, 'Paul Kim', 43, '555-0123',  '2022-01-13'),
(14, 'Laura Lee',32,  '555-4567',  '2022-01-14'),
(15, 'Mike Johnson',24, '555-8901', '2022-01-15');
insert into country values(1,'India'),
(2,'Vatican City'),
(3,'Saudi Arabia'),
(4, 'Malasiya'),
(5, 'United States'),
(6, 'United Kingdom'),
(7, 'Australia'),
(8, 'Canada'),
(9, 'China'),
(10, 'Japan'),
(11, 'France'),
(12, 'Germany'),
(13, 'Italy'),
(14, 'Spain'),
(15, 'South Africa');
insert into Places values(1,'Auroville', 'Pondicherry', 1, 'within city'),
(2,'Bharatpur Bird Sanctuary', 'Bharatpur', 1, 'outside city'),
(3,'Kurukshetra', 'Kurukshetra', 2, 'outside city'),
(4,'Kashi Vishwanath Temple', 'Varanasi', 1, 'outside city'),
(5,'Ayodhya', 'Ayodhya', 1, 'outside city'),
(6,'Puri', 'Puri', 1, 'outside city'),
(7,'Peters Basilica', 'Vatican City', 2, 'outside city '),
(8,'Mecca Masjid', 'Mecca', 3, 'outside city'),
(9,'Auroville', 'Pondicherry', 1, 'within city'),
(10,'Bharatpur Bird Sanctuary', 'Bharatpur', 1, 'outside city'),
(11,'Kurukshetra', 'Kurukshetra', 2, 'outside city'),
(12,'Kashi Vishwanath Temple', 'Varanasi', 1, 'outside city'),
(13,'Ayodhya', 'Ayodhya', 1, 'outside city'),
(14,'Puri', 'Puri', 1, 'outside city'),
(15,'Peters Basilica', 'Vatican City', 2, 'outside city');
insert into  TripDatas values(1,1, 1, '2022-01-10', '2022-01-15', 100),
(2,11, 2, '2022-02-20', '2022-02-22', 500),
(3,1, 5, '2022-03-10', '2022-03-12', 1500),
(4,4, 4, '2022-04-01', '2022-04-05', 2000),
(5,3, 5, '2022-05-05', '2022-05-10', 2500),
(6,3, 6, '2022-06-01', '2022-06-05', 300),
(7,6, 1, '2022-01-10', '2022-01-15', 1000),
(8,9, 2, '2022-03-20', '2022-03-22', 500),
(9,1, 3, '2022-03-10', '2022-03-12', 150),
(10,2, 4, '2022-04-01', '2022-04-05', 2000),
(11,3, 5, '2022-05-05', '2022-05-10', 2500),
(12,3, 6, '2022-06-01', '2022-06-05', 3000),
(13,7, 1, '2022-01-10', '2022-01-15', 100),
(14,8, 2, '2022-02-20', '2022-02-22', 500),
(15,2, 3, '2022-03-10', '2022-03-12', 1500);

