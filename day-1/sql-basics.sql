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
/* Project: Design a store database
Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items.
*/

/* This project is a database for a store I design products on Redbubble.com: http://www.redbubble.com/people/redbubble?asc=u */

CREATE TABLE redbubble_store (
  id INTEGER,
  name TEXT,
  item TEXT,
  price INTEGER,
  color TEXT,
  sku INTEGER
);

INSERT INTO redbubble_store VALUES
 (1, "Black Grls R Magic", "Tee", 20, "pink lemonade", 1234),
 (2, "Black Grls R Magic", "Pouch", 10, "lavender punch", 1235),
 (3, "Black Grls R Magic", "Sticker", 2, "vanilla icing",1236),
 (4, "Black Grls R Magic", "Tote", 15, "chocolate",1237),
 (5, "MELANIN", "Tee", 20, "pear", 1238),
 (6, "MELANIN", "Pouch", 10, "vanilla", 1239),
 (7, "MELANIN", "Sticker", 2, "bamboo", 1240),
 (8, "MELANIN", "Tote", 15, "chocolate", 1241),
 (9, "#BlkGrlsRLit", "Tee", 20, "lavender punch",1242),
 (10, "#BlkGrlsRLit", "Pouch", 10, "pear",1243),
 (11, "#BlkGrlsRLit", "Sticker", 2, "lemon",1244),
 (12, "#BlkGrlsRLit", "Tote", 15, "vanilla",1245),
 (13, "#MelaninMonday", "Tee", 20, "pink lemonade", 1246),
 (14, "#MelaninMonday", "Pouch", 10, "chocolate", 1247),
 (15, "#MelaninMonday", "Sticker", 2, "vanilla icing", 1248),
 (16, "#MelaninMonday", "Tote", 15, "creme brulee", 1249);

SELECT * FROM redbubble_store;
SELECT item FROM redbubble_store GROUP BY item;
