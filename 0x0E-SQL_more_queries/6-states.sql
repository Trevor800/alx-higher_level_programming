-- Create the database 'hbtn_0d_usa' if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the database 'hbtn_0d_usa'
USE hbtn_0d_usa;

-- Create the table 'states'
CREATE TABLE IF NOT EXISTS states (
    id INT UNIQUE AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR(256)
);
