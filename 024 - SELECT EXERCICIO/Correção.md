# 1 - Selecione todas as aulas do curso de html-para-iniciantes e ordene por lesson_order em ordem crescente.

Uso de subquery mas também poderia ser feita com JOIN

SELECT \* FROM lessons
WHERE course_id = (SELECT id FROM courses WHERE slug = 'html-para-iniciantes')
ORDER BY lesson_order;

SELECT \* FROM lessons
JOIN courses ON lessons.course_id = courses.id
WHERE courses.slug = 'html-para-iniciantes'
ORDER BY lesson_order;

# 2 - Somar o total de segundos das aulas do curso de css-animacoes.

SELECT SUM(seconds) FROM lessons
WHERE course_id = (SELECT id FROM courses WHERE slug = 'css-animacoes');

SELECT SUM(seconds) FROM lessons
JOIN courses ON lessons.course_id = courses.id
WHERE courses.slug = 'css-animacoes'

# 3 - Contar o total de aulas e agrupar por curso.

SELECT course_id, COUNT(\*) AS total_aulas FROM lessons GROUP BY course_id;

# 4 - Somar o total de segundos das aulas, agrupar por curso e ordenar o total de segundos por ordem decrescente.

SELECT course_id, SUM(seconds)
AS total_segundos FROM lessons
GROUP BY course_id
ORDER BY total_segundos DESC;

# 5 - Utilize a query 4, e filtre apenas os cursos que possuem mais de 2300 segundos de aulas. Continue ordenando.

SELECT SUM(seconds) AS total_segundos_aulas
FROM lessons
GROUP BY course_id
HAVING total_segundos_aulas > 2300
ORDER BY total_segundos_aulas DESC;

# 6 - Utilize a query 4, mostre o título do curso no lugar do course_id.

SELECT c.title, SUM(l.seconds)
AS total_segundos FROM lessons AS l
JOIN courses AS c ON l.course_id = c.id
GROUP BY l.course_id
ORDER BY total_segundos DESC;

# 7 - Selecione o ID dos certificados de mariana@email.com

SELECT \* FROM certificates
WHERE user_id = (SELECT id FROM users WHERE email = 'mariana@email.com');

SELECT certificates.id FROM certificates
JOIN users ON certificates.user_id = users.id
WHERE users.email = 'mariana@email.com';

# 8 - Selecione todas as aulas completas ou não pelo usuário lucas@email.com. Mostre o título da aula e se está completa ou não.

SELECT lessons.title, lessons_completed.completed FROM lessons
LEFT JOIN lessons_completed
ON lessons.id = lessons_completed.lesson_id
AND lessons_completed.user_id =
(SELECT id FROM users WHERE email = 'lucas@email.com');

# 9 - Selecione as aulas anterior/próxima da aula funcoes-e-escopo. Retorne 3 aulas (se existirem): a anterior, a atual e a próxima. Utilize o lesson_order para isso.

SELECT \* FROM lessons
where course_id = 3
AND lesson_order
between 2 and 4 order by lesson_order;

SELECT \* FROM lessons
where course_id = (SELECT course_id FROM lessons WHERE slug = 'funcoes-e-escopo')
AND lesson_order
IN ((SELECT lesson_order FROM lessons WHERE slug = 'funcoes-e-escopo') - 1,
(SELECT lesson_order FROM lessons WHERE slug = 'funcoes-e-escopo'),
(SELECT lesson_order FROM lessons WHERE slug = 'funcoes-e-escopo') + 1)
ORDER BY lesson_order;

WITH current
AS (SELECT course_id, lesson_order
FROM lessons
WHERE slug = 'funcoes-e-escopo'
)
SELECT \* FROM lessons
where course_id = (SELECT course_id FROM current)
AND lesson_order
IN ((SELECT lesson_order FROM current) - 1,
(SELECT lesson_order FROM current),
(SELECT lesson_order FROM current) + 1)
ORDER BY lesson_order;
