SELECT 
    al.name AS album, COUNT(fav.song_id) AS favoritadas
FROM
    songs s
        INNER JOIN
    favorites fav ON fav.song_id = s.song_id
        INNER JOIN
    albums al ON al.album_id = s.album_id
GROUP BY al.name
ORDER BY favoritadas DESC , al.name
LIMIT 3;