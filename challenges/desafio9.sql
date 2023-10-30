SELECT 
    COUNT(h.song_id) AS musicas_no_historico
FROM
    history h
WHERE
    user_id = 1;