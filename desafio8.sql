SELECT
nome_do_artista AS artista,
nome_do_album AS album
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON a.artista_id = al.artista_id
GROUP BY artista, album
HAVING artista = 'Elis Regina'
ORDER BY album;