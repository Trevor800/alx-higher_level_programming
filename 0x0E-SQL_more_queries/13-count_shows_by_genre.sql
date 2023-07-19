-- Use the database 'hbtn_0d_tvshows'
USE hbtn_0d_tvshows;

-- List all genres and the number of shows linked to each
SELECT tv_genres.name AS 'genre', COUNT(tv_show_genres.genre_id) AS 'number_of_shows'
FROM tv_genres
LEFT JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
GROUP BY genre
ORDER BY number_of_shows DESC;