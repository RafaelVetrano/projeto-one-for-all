SELECT
FORMAT(MIN(valor), 2) AS faturamento_minimo,
FORMAT(MAX(valor), 2) AS faturamento_maximo,
FORMAT(AVG(valor), 2) AS faturamento_medio,
FORMAT(SUM(p.valor), 2) AS faturamento_total
FROM SpotifyClone.plano AS p
INNER JOIN SpotifyClone.usuario AS u
ON p.plano_id = u.plano_id;

