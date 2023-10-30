SELECT 
    ar.name AS artista,
    al.name AS album,
    COUNT(f.user_id) AS pessoas_seguidoras
FROM
    artists ar
        INNER JOIN
    albums al ON ar.artist_id = al.artist_id
        INNER JOIN
    following f ON ar.artist_id = f.artist_id
GROUP BY ar.name , al.name
ORDER BY pessoas_seguidoras DESC , artista, album;