CREATE TABLE usuario(
  id INTEGER PRIMARY KEY,
  email TEXT NOT NULL UNIQUE COLLATE NOCASE,
  nome TEXT NOT NULL,
  tipo TEXT NOT NULL DEFAULT 'usuario' CHECK (tipo IN ('usuario', 'admin')),
  vitalicio INTEGER DEFAULT 0 CHECK (vitalicio IN (0,1)),
  criado TEXT DEFAULT CURRENT_TIMESTAMP
) STRICT;

UPDATE usuario SET tipo = 'usuario' WHERE id = 1;

DROP TABLE usuario;

SELECT * FROM usuario;

INSERT INTO usuario (email,nome, vitalicio) VALUES ('leo@email.com', 'leo',3);
INSERT INTO usuario (email,nome,tipo) VALUES ('leo1@email.com', 'leo', 'admin');