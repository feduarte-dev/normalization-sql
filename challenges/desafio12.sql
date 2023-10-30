SELECT 
    a.name AS artista,
    CASE
        WHEN COUNT(s.song_id) >= 5 THEN 'A'
        WHEN COUNT(s.song_id) IN (3 , 4) THEN 'B'
        WHEN COUNT(s.song_id) IN (1 , 2) THEN 'C'
        ELSE '-'
    END AS ranking
FROM
    songs s
        INNER JOIN
    favorites fav ON s.song_id = fav.song_id
        RIGHT JOIN
    artists a ON a.artist_id = s.artist_id
GROUP BY a.name
ORDER BY COUNT(s.song_id) DESC , a.name;