CREATE TABLE users(
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  password TEXT NOT NULL,
  email TEXT NOT NULL COLLATE NOCASE UNIQUE,
  created TEXT DEFAULT CURRENT_TIMESTAMP
) STRICT;

INSERT INTO users (id,name,password,email) VALUES (42, 'André', 'senha123', 'andre@email.com');
SELECT * from users;

DELETE FROM users;

------------------------------------------------------------------------------------------------

CREATE TABLE courses(
  id INTEGER PRIMARY KEY,
  slug TEXT  NOT NULL COLLATE NOCASE UNIQUE,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  aulas INTEGER NOT NULL,
  horas INTEGER NOT NULL,
  created TEXT DEFAULT CURRENT_TIMESTAMP 
) STRICT;

INSERT INTO courses (slug, title, description, aulas, horas) 
VALUES (
  'javascript-basico', 'Javascript Básico', 
  'Aprenda os fundamentos da linguagem Javascript.',
  20,5
);

SELECT * FROM courses;

------------------------------------------------------------------------------------------------

CREATE TABLE lessons(
  id INTEGER PRIMARY KEY,
  course_id INTEGER,
  slug TEXT COLLATE NOCASE,
  title TEXT NOT NULL,
  materia TEXT NOT NULL,
  materia_slug TEXT NOT NULL COLLATE NOCASE,
  seconds INTEGER NOT NULL,
  video TEXT NOT NULL COLLATE NOCASE,
  description TEXT NOT NULL,
  lesson_order INTEGER NOT NULL,
  free INTEGER DEFAULT 0 CHECK (free IN (0,1)),
  created TEXT DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (course_id) REFERENCES courses (id),
  UNIQUE (course_id, slug)
) STRICT;

INSERT INTO lessons (id, course_id, slug, title, materia, materia_slug, seconds, video, description, lesson_order, free)
VALUES (
  101, 1, 'variaveis-let-const', 'Variáveis: let e const', 'Fundamentos', 'fundamentos', 480, 'variaveis.mp4',
  'Entenda a diferenã entre let, const e var', 3,1);

SELECT * FROM lessons;


------------------------------------------------------------------------------------------------


CREATE TABLE lessons_completed(
  user_id INTEGER,
  course_id INTEGER,
  lesson_id INTEGER,
  completed TEXT DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (course_id) REFERENCES courses (id),
  FOREIGN KEY (lesson_id) REFERENCES lessons (id)
) STRICT;

select * from lessons_completed;

INSERT INTO lessons_completed (user_id, course_id, lesson_id) VALUES (42, 1,101);


------------------------------------------------------------------------------------------------

CREATE TABLE certificates(
  id TEXT NOT NULL UNIQUE,
  user_id INTEGER,
  course_id INTEGER,
  completed TEXT DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (course_id) REFERENCES courses (id),
  UNIQUE (course_id, user_id)
) STRICT;

SELECT * FROM certificates;

INSERT INTO certificates (id, user_id, course_id) VALUES ('aq32scsqs', 42, 1);