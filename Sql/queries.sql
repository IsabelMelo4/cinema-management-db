SELECT * FROM filme;

SELECT * FROM usuario;

SELECT filme.nome, sessao.horario
FROM filme
JOIN sessao
ON filme.id = sessao.id_filme;

SELECT usuario.nome, ingresso.assento
FROM ingresso
JOIN usuario
ON ingresso.id_user = usuario.id;