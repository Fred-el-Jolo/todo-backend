-- Your SQL goes here
PRAGMA foreign_keys = ON;

CREATE TABLE context (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  title TEXT NOT NULL,
  description TEXT,
  color TEXT,
  icon TEXT,
  default_author INTEGER,
  default_assignee INTEGER
);

CREATE TABLE category (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  title TEXT NOT NULL,
  description TEXT,
  color TEXT,
  icon TEXT,
  default_author INTEGER,
  default_assignee INTEGER
);

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  login TEXT NOT NULL,
  name TEXT NOT NULL,
  password TEXT NOT NULL,
  avatar TEXT NOT NULL
);

CREATE TABLE tag (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  title TEXT NOT NULL,
  description TEXT,
  color TEXT,
  icon TEXT
);

CREATE TABLE todo (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  status TEXT NOT NULL,
  context_id INTEGER,
  category_id INTEGER,
  author_id INTEGER NOT NULL,
  title TEXT NOT NULL,
  description TEXT,
  due_date TIMESTAMP,
  end_date TIMESTAMP,
  FOREIGN KEY (context_id) REFERENCES context (id),
  FOREIGN KEY (category_id) REFERENCES category (id),
  FOREIGN KEY (author_id) REFERENCES user (id)
);

CREATE TABLE assignees (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  todo_id INTEGER NOT NULL,
  assignee_id INTEGER NOT NULL,
  FOREIGN KEY (todo_id) REFERENCES todo (id),
  FOREIGN KEY (assignee_id) REFERENCES user (id)
);

CREATE TABLE tags (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  todo_id INTEGER NOT NULL,
  tag_id INTEGER NOT NULL,
  FOREIGN KEY (todo_id) REFERENCES todo (id),
  FOREIGN KEY (tag_id) REFERENCES tag (id)
);