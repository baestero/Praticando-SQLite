SELECT
  *
FROM
  cursos;


PRAGMA TABLE_INFO (cursos);


INSERT INTO
  cursos (id, nome, aulas)
VALUES
  (1, 'HTML', 10);


INSERT INTO
  cursos (id, nome, aulas)
VALUES
  (3, 'JS', 15);


INSERT INTO
  cursos (id, nome, aulas)
VALUES
  (2, 'CSS', 12);




DELETE FROM cursos WHERE nome = 'CSS';

DELETE FROM cursos WHERE id = 1;