SELECT
  *
FROM
  cursos;

SELECT id, nome FROM cursos;

SELECT * FROM cursos LIMIT 2;

SELECT * FROM cursos WHERE ID = 2;

SELECT * FROM cursos WHERE aulas < 11;

SELECT * FROM cursos WHERE id = 2 AND aulas > 10;

SELECT * FROM cursos WHERE id = 2 OR  aulas > 10 LIMIT 1;