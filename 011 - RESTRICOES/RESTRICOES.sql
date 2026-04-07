CREATE TABLE usuario(
  id INTEGER PRIMARY KEY,
  email TEXT NOT NULL UNIQUE COLLATE NOCASE,
  nome TEXT NOT NULL
) STRICT;

DROP TABLE usuario;

SELECT * FROM usuario 

INSERT INTO usuario (email, nome) VALUES ('leo@sememail.com','leo');
INSERT INTO usuario (email,nome) VALUES ('Leo@sememail.com','leo');

CREATE TABLE certificados(
  id INTEGER PRIMARY KEY,
  usuario_id INTEGER NOT NULL,
  curso_id INTEGER NOT NULL,
  UNIQUE (usuario_id, curso_id)
) STRICT;

DROP TABLE certificados;

INSERT INTO certificados (usuario_id,curso_id) VALUES (1,3)

SELECT * FROM certificados;