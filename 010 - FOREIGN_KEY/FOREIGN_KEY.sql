create table cursos (
  id INTEGER PRIMARY KEY,
  nome TEXT
) STRICT;

create table aulas (
  id INTEGER PRIMARY KEY,
  curso_id INTEGER,
  nome TEXT,
  foreign key (curso_id) references cursos (id) ON DELETE CASCADE ON UPDATE CASCADE
) STRICT;

INSERT INTO cursos (nome) VALUES ('html');

SELECT * FROM cursos;

INSERT INTO aulas (curso_id, nome) values (1,'HTML');

SELECT * FROM aulas;


UPDATE cursos SET id = 2 WHERE id = 1;