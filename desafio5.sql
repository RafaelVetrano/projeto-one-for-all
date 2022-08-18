SELECT 
nome AS cancao,
COUNT(h.musica_id) AS reproducoes

FROM SpotifyClone.musica AS m
INNER JOIN SpotifyClone.musicas_reproduzidas AS h
ON m.musica_id = h.musica_id
GROUP BY nome
ORDER BY reproducoes DESC, cancao
LIMIT 2