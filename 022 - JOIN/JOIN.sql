SELECT * FROM lessons_completed 
  JOIN users ON lessons_completed.user_id = users.id;

SELECT users.name, lessons_completed.lesson_id FROM lessons_completed 
  JOIN users ON lessons_completed.user_id = users.id;

SELECT u.name, lc.lesson_id, l.title AS title_lesson, c.title AS title_course FROM lessons_completed AS lc 
  JOIN users AS u ON lc.user_id = "u".id
  JOIN lessons AS l ON lc.lesson_id = l.id
  JOIN courses AS c ON lc.course_id = c.id;
