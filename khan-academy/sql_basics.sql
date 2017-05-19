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
