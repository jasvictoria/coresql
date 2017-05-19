/* Create table about the people and what they do here
In this project, you’re going to make your own table with some small set of “famous people”, then make more tables about things they do and join those to create nice human readable lists.

For example, here are types of famous people and the questions your data could answer:

Movie stars: What movies are they in? Are they married to each other?
Singers: What songs did they write? Where are they from?
Authors: What books did they write?
Fictional characters: How are they related to other characters? What books do they show up in?*/

CREATE TABLE celebs (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT,
talent TEXT,
nationality TEXT
);

INSERT INTO celebs (Name, talent, nationality) VALUES ("Dev Hynes", "Songwriter", "British");
INSERT INTO celebs (Name, talent, nationality) VALUES ("Drake", "Rapper", "Canadian");
INSERT INTO celebs (Name, talent, nationality) VALUES ("Naomi Campbell", "Model", "British");
INSERT INTO celebs (Name, talent, nationality) VALUES ("Kareena Kapoor", "Actress", "Indian");
INSERT INTO celebs (Name, talent, nationality) VALUES ("Mindy Kahling", "Comedian", "American");
SELECT * FROM celebs;
