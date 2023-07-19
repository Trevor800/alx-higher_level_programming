-- Use the database 'hbtn_0d_usa'
USE hbtn_0d_usa;

-- List all cities of California
SELECT cities.id, cities.name
FROM cities
JOIN states ON cities.state_id = states.id
WHERE states.name = 'California'
ORDER BY cities.id ASC;
