# LEFT JOIN

- O LEFT JOIN retorna todas as linhas da tabela à eaquerda lessons e as correspondências da tabela à direita lessons_completed. Se não houver correspondência, os valores da tabela à direita serão NULL

A diferença do join é que alem das correspondencias a left join dara uma visão geral da tabela.

SELECT lc.user_id, l.title, lc.completed
FROM lessons AS l
LEFT JOIN lessons_completed AS lc
ON lc.lesson_id = l.id AND lc.user_id = 1;

# SELF JOIN

O SELF JOIN É um JOIN de uma tabela consigo mesmma. É util para comparar linhas dentro da mesma tabela e encontrar valores duplicados.

SELECT a.id, a.slug
FROM lessons AS a
JOIN lessons AS b
ON a.slug = b.slug
WHERE a.id != b.id;
