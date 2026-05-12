SELECT * FROM courses;
SELECT * FROM lessons;

SELECT * FROM lessons WHERE course_id = 1 ORDER BY lesson_order;

SELECT * FROM lessons WHERE course_id = 2

SELECT SUM(seconds)  FROM lessons WHERE course_id = 2;

SELECT COUNT(*) AS total_aulas, title FROM lessons GROUP BY course_id;

SELECT SUM(seconds)  AS total_segundos_aulas
FROM lessons 
GROUP BY course_id 
ORDER BY total_segundos_aulas DESC;

SELECT SUM(seconds)  AS total_segundos_aulas
FROM lessons 
GROUP BY course_id 
HAVING total_segundos_aulas > 2300
ORDER BY total_segundos_aulas DESC;

SELECT SUM(seconds)  AS total_segundos_aulas, courses.title
FROM lessons
JOIN courses ON lessons.course_id = courses.id
GROUP BY course_id 
ORDER BY total_segundos_aulas DESC;


SELECT certificates.id FROM certificates
JOIN users ON certificates.user_id = users.id
WHERE users.email = 'mariana@email.com';

SELECT * FROM lessons_completed
  
SELECT * FROM lessons_completed
JOIN users ON lessons_completed.user_id = users.id
LEFT JOIN lessons ON lessons_completed.lesson_id = lessons.id
WHERE users.email = 'lucas@email.com'


SELECT lessons.title, lessons_completed.completed FROM lessons
LEFT JOIN lessons_completed 
ON lessons.id = lessons_completed.lesson_id AND lessons_completed.user_id = (SELECT id FROM users WHERE email = 'lucas@email.com')


  
SELECT * FROM lessons where course_id = 3 AND lesson_order between 2 and 4 order by lesson_order;

SELECT * FROM lessons where slug = 'funcoes-e-escopo';





  




