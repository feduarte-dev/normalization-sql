SELECT 
    u.name AS pessoa_usuaria,
    IF(MAX(YEAR(h.play_date)) >= 2021,
        'Ativa',
        'Inativa') AS status_pessoa_usuaria
FROM
    users u
        INNER JOIN
    history h ON u.user_id = h.user_id
GROUP BY u.name
ORDER BY u.name;