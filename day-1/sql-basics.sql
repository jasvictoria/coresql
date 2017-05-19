/* Challenge:Book List database
What are your favorite books? You can make a database table to store them in! In this first step, create a table to store your list of books. It should have columns for id, name, and rating. */

CREATE TABLE bookshelf (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER);

INSERT INTO bookshelf values (2, "Oryx and Crake", 8 );
INSERT INTO bookshelf values (1, "Seven Minutes In Heaven", 9 );
INSERT INTO bookshelf values (3, "Baby Ji", 6 );
SELECT * FROM bookshelf;

--------------------------------------------------------------------------------
/* Challenge: Box office hits database

This database contains an incomplete list of box office hits and their release year. In this challenge, you're going to get the results back out of the database in different ways! In this first step, just select all the movies. */

CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);

INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);

SELECT * FROM movies;
SELECT * FROM movies WHERE release_year > 2000 ORDER BY release_year;

--------------------------------------------------------------------------------
/* Challenge: to-do list database stats
(Report a problem)
Step 1
Here's a table containing a to-do list with the number of minutes it will take to complete each item. Insert another item to your todo list with the estimated minutes it will take. */

CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);

INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);
INSERT INTO todo_list VALUES (4, "Make coffee", 5);

SELECT SUM (minutes) FROM todo_list
--------------------------------------------------------------------------------
