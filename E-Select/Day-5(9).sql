CREATE TABLE cities (
    id INT PRIMARY KEY,
    name TEXT,
    country TEXT
);

INSERT INTO cities (id, name, country) VALUES
(1, 'Tokyo', 'Japan'),
(2, 'London', 'England'),
(3, 'Paris', 'France'),
(4, 'New York', 'USA'),
(5, 'New Delhi', 'India'),
(6, 'Shanghai', 'China'),
(7, 'Sao Paulo', 'Brazil'),
(8, 'Mexico City', 'Mexico'),
(9, 'Cairo', 'Egypt'),
(10, 'Mumbai', 'India'),
(11, 'Beijing', 'China'),
(12, 'Los Angeles', 'USA'),
(13, 'Toronto', 'Canada'),
(14, 'Vancouver', 'Canada');
SELECT name FROM cities
WHERE country IN ('USA', 'Canada', 'Mexico')




