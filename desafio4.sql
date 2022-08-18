SELECT
nome_usuario AS usuario,
IF (MAX(YEAR(data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario

FROM SpotifyClone.musicas_reproduzidas AS h
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = h.usuario_id
GROUP BY nome_usuario
ORDER BY nome_usuario
