-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS your_database_name;

-- Use the database
USE your_database_name;

-- Create the table 'unique_id'
CREATE TABLE IF NOT EXISTS unique_id (
    id INT DEFAULT 1,
    name VARCHAR(256),
    UNIQUE(id)
);
