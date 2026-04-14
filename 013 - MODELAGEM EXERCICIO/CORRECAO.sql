CREATE TABLE "users" (
  "id" INTEGER PRIMARY KEY,
  "name" TEXT NOT NULL,
  "password" TEXT NOT NULL,
  "email" TEXT NOT NULL COLLATE NOCASE UNIQUE,
  "created" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
) STRICT;

CREATE TABLE "courses" (
  "id" INTEGER PRIMARY KEY,
  "slug" TEXT NOT NULL COLLATE NOCASE UNIQUE,
  "title" TEXT NOT NULL,
  "description" TEXT NOT NULL,
  "aulas" INTEGER NOT NULL,
  "horas" INTEGER NOT NULL,
  "created" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
) STRICT;

CREATE TABLE "lessons" (
  "id" INTEGER PRIMARY KEY,
  "course_id" INTEGER NOT NULL,
  "slug" TEXT NOT NULL COLLATE NOCASE,
  "title" TEXT NOT NULL,
  "materia" TEXT NOT NULL,
  "materia_slug" TEXT NOT NULL,
  "seconds" INTEGER NOT NULL,
  "video" TEXT NOT NULL,
  "description" TEXT NOT NULL,
  "lesson_order" INTEGER NOT NULL,
  "free" INTEGER NOT NULL DEFAULT 0 CHECK ("free" IN (0,1)),
  "created" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY ("course_id") REFERENCES "courses" ("id"),
  UNIQUE("course_id", "slug")
) STRICT;

CREATE TABLE "lessons_completed" (
  "user_id" INTEGER NOT NULL,
  "course_id" INTEGER NOT NULL,
  "lesson_id" INTEGER NOT NULL,
  "completed" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY ("user_id", "course_id", "lesson_id"),
  FOREIGN KEY ("lesson_id") REFERENCES "lessons" ("id"),
  FOREIGN KEY ("course_id") REFERENCES "courses" ("id"),
  FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON DELETE CASCADE
) STRICT;

CREATE TABLE "certificates" (
  "id" TEXT PRIMARY KEY,
  "user_id" INTEGER NOT NULL,
  "course_id" INTEGER NOT NULL,
  "completed" TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE ("user_id", "course_id"),
  FOREIGN KEY ("course_id") REFERENCES "courses" ("id"),
  FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON DELETE CASCADE
) STRICT;
