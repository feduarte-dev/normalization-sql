SELECT 
    ar.name AS artista, al.name AS album
FROM
    artists ar
        INNER JOIN
    albums al ON ar.artist_id = al.artist_id
WHERE
    ar.name = 'Elis Regina';