WITH recursive classificacao_P AS (
SELECT cd.codigo, concat(nome) AS nome, cd.codigo_pai
FROM  classificacao AS cd
WHERE cd.codigo_pai is null

UNION ALL

SELECT cod.codigo, concat(p.nome,|| '->' ||, cod.nome, cod.codigo_pai
FROM classificacao AS cod
INNER JOIN classificacao_P AS p ON p.codigo = cod.codigo_pai
WHERE cod.codigo_pai IS NOT NULL)

SELECT*
FROM classificacao_P
ORDER BY classificacao_P.nome
;
