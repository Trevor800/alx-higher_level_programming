-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS your_database_name;

-- Use the database
USE your_database_name;

-- Create the table 'force_name'
CREATE TABLE IF NOT EXISTS force_name (
    id INT,
    name VARCHAR(256) NOT NULL
);
