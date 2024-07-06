-- Users Table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    date_of_birth DATE
);

-- Insert Egyptian Users
INSERT INTO users (first_name, last_name, email, date_of_birth) VALUES
('Mohamed', 'Ali', 'mohamed.ali@example.com', '1990-01-01'),
('Fatma', 'Hassan', 'fatma.hassan@example.com', '1992-05-15'),
('Ahmed', 'Mahmoud', 'ahmed.mahmoud@example.com', '1985-10-20'),
('Sara', 'Youssef', 'sara.youssef@example.com', '1998-07-30'),
('Mona', 'Ibrahim', 'mona.ibrahim@example.com', '1987-02-14'),
('Khaled', 'Salem', 'khaled.salem@example.com', '1995-06-05'),
('Noura', 'Fathy', 'noura.fathy@example.com', '1989-03-25'),
('Hassan', 'Naguib', 'hassan.naguib@example.com', '1992-11-12'),
('Yasmin', 'Said', 'yasmin.said@example.com', '1996-08-08'),
('Omar', 'Samir', 'omar.samir@example.com', '1984-04-20'),
('Laila', 'Adel', 'laila.adel@example.com', '1993-12-30'),
('Mustafa', 'Rashad', 'mustafa.rashad@example.com', '1990-09-15'),
('Heba', 'Gamal', 'heba.gamal@example.com', '1997-05-10'),
('Tamer', 'Shawky', 'tamer.shawky@example.com', '1986-07-22');

-- Films Table
CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_date DATE,
    price DECIMAL(5,2),
    rating VARCHAR(10),
    user_rating DECIMAL(2,1) CHECK (user_rating >= 1 AND user_rating <= 5)
);

-- Insert Egyptian Films
INSERT INTO films (title, release_date, price, rating, user_rating) VALUES
('El Erhab wel Kabab', '1992-06-03', 12.99, 'PG', 4.8),
('Omaret Yacoubian', '2006-06-21', 9.99, 'R', 4.9),
('Asmaa', '2011-11-25', 14.99, 'R', 4.7),
('El Gezira', '2007-10-25', 11.99, 'PG-13', 4.8),
('Omar 2000', '2000-01-12', 10.99, 'PG', 4.6),
('Tito', '2004-05-05', 9.99, 'PG-13', 4.7),
('Baheb El Cima', '2004-06-09', 8.99, 'PG', 4.5),
('El Ard', '1969-03-26', 7.99, 'PG', 4.4),
('El Maseer', '1997-05-21', 9.99, 'PG-13', 4.3),
('Awlad El Aam', '2009-12-09', 12.99, 'PG', 4.2),
('678', '2010-12-22', 13.99, 'R', 4.3),
('Asal Eswed', '2014-01-22', 11.99, 'PG', 4.6),
('Seraa Fil Wadi', '1954-09-01', 9.99, 'PG', 4.8),
('El Erhab wel Kabab', '1992-06-03', 12.99, 'PG', 4.5),
('El Bidaya', '1986-10-15', 10.99, 'PG', 4.9),
('El Akhar', '1999-11-03', 14.99, 'R', 4.6),
('Doaa El Karawan', '1959-01-26', 9.99, 'PG', 4.7),
('Lahn El Wafaa', '1949-01-17', 9.99, 'PG', 4.8),
('Bidaya wa Nihaya', '1960-04-19', 10.99, 'PG', 4.4),
('Awdat Al Ibn El Dal', '1976-12-26', 11.99, 'PG', 4.5);

-- Film Category Table
CREATE TABLE film_category (
    category_id SERIAL PRIMARY KEY,
    film_id INTEGER REFERENCES films(film_id),
    category_name VARCHAR(50) NOT NULL
);

-- Insert Film Categories
INSERT INTO film_category (film_id, category_name) VALUES
(1, 'Comedy'),
(2, 'Drama'),
(3, 'Drama'),
(4, 'Action'),
(5, 'Drama'),
(6, 'Action'),
(7, 'Comedy'),
(8, 'Drama'),
(9, 'Drama'),
(10, 'Action'),
(11, 'Drama'),
(12, 'Comedy'),
(13, 'Drama'),
(14, 'Comedy'),
(15, 'Drama'),
(16, 'Drama'),
(17, 'Drama'),
(18, 'Comedy'),
(19, 'Drama'),
(20, 'Drama');

-- Actors Table
CREATE TABLE actors (
    actor_id SERIAL PRIMARY KEY,
    actor_name VARCHAR(255) NOT NULL
);

-- Insert Egyptian Actors
INSERT INTO actors (actor_name) VALUES
('Adel Imam'),          
('Youssra'),            
('Hend Sabry'),         
('Ahmed El Sakka'),     
('Khaled Abol Naga'),   
('Amr Waked'),          
('Lobna Abdel Aziz'),   
('Mahmoud El Meliguy'), 
('Mohamed Mounir'),     
('Karim Abdel Aziz'),   
('Nelly Karim'),        
('Ahmed Helmy'),        
('Faten Hamama'),       
('Adel Imam'),          
('Ahmed Zaki'),         
('Hanan Turk'),         
('Amina Rizk'),         
('Omar Sharif'),        
('Ezzat El Alaily'),    
('Shadia');             

-- Film Actors Table
CREATE TABLE film_actors (
    film_id INTEGER REFERENCES films(film_id),
    actor_id INTEGER REFERENCES actors(actor_id),
    PRIMARY KEY (film_id, actor_id)
);

-- Insert Film Actors
INSERT INTO film_actors (film_id, actor_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);
