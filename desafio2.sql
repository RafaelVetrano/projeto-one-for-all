SELECT 
COUNT(DISTINCT musica.musica_id) as cancoes,
COUNT(DISTINCT album.album_id) as albuns,
COUNT(DISTINCT artista_id) as artistas
FROM SpotifyClone.musica as musica
INNER JOIN SpotifyClone.album as album
ON album.album_id