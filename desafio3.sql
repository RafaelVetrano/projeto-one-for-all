SELECT 
nome_usuario AS usuario,
COUNT(nome_usuario) AS qt_de_musicas_ouvidas,
ROUND((SUM(duracao) / 60), 2) AS total_minutos

FROM SpotifyClone.usuario AS u

INNER JOIN SpotifyClone.musicas_reproduzidas AS h
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.musica AS m
ON h.musica_id = m.musica_id

group by nome_usuario
ORDER BY nome_usuario
