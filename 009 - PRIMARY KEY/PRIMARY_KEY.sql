CREATE TABLE cursos (
  id INTEGER PRIMARY KEY,
  nome TEXT,
  preco INTEGER
) STRICT;

INSERT INTO cursos (nome, preco) VALUES ('HTML', 1000);

INSERT INTO cursos (id) VALUES (2);

SELECT * FROM cursos;
