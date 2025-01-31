SELECT 
    CASE
        WHEN u.age <= 30 THEN 'Até 30 anos'
        WHEN u.age BETWEEN (31) AND (60) THEN 'Entre 31 e 60 anos'
        ELSE 'Maior de 60 anos'
    END AS faixa_etaria,
    COUNT(DISTINCT u.user_id) AS total_pessoas_usuarias,
    COUNT(fav.song_id) AS total_favoritadas
FROM
    users u
        LEFT JOIN
    favorites fav ON u.user_id = fav.user_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;