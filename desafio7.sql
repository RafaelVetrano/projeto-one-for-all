SELECT
a.nome_do_artista AS artista,
nome_do_album AS album,
COUNT(DISTINCT s.usuario_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON a.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo AS s 
ON s.artista_id = a.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista;