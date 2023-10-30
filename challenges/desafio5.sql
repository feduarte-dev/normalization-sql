SELECT 
    s.name AS cancao, COUNT(h.song_id) AS reproducoes
FROM
    songs s
        INNER JOIN
    history h ON s.song_id = h.song_id
GROUP BY s.name
ORDER BY reproducoes DESC, s.name
LIMIT 2;