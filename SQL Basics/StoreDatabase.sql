A database for this store http://www.redbubble.com/people/fymb?asc=u

CREATE TABLE fymb_store (id INTEGER PRIMARY KEY, name TEXT, department TEXT, price INTEGER, color TEXT);

INSERT INTO fymb_store VALUES (1, "Black Grls R Magic", "Tees", 20, "pink lemonade");
INSERT INTO fymb_store VALUES (2, "MELANIN", "Pouch", 12, "pear" );
INSERT INTO fymb_store VALUES (3, "MELANIN", "Pouch", 12, "bamboo" );
INSERT INTO fymb_store VALUES (4, "MIXED KIDS R DOPE", "Onesie", 15, "vanilla");
INSERT INTO fymb_store VALUES (5, "#MelaninMonday", "Tote", 10, "lavender punch");
INSERT INTO fymb_store VALUES (6, "blk grls r lit", "iPhone Case", 14, "pink punch");
INSERT INTO fymb_store VALUES(7, "Black Grls R Magic", "Tees", 20, "black");
INSERT INTO fymb_store VALUES (8, "MIXED KIDS R DOPE", "Sticker", 2, "white");
INSERT INTO fymb_store VALUES (9, "hapa kids rock", "Onesie", 15, "lemonade");
INSERT INTO fymb_store VALUES(10, "black & brown supreme", "sticker", 2, "white");
INSERT INTO fymb_store VALUES(11, "brown boys rock", "onesie", 15, "white");
INSERT INTO fymb_store VALUES(12, "brown boys rock", "sticker", 2, "black");
INSERT INTO fymb_store VALUES (13, "blk grls r lit", "Laptop Bag", 35, "pink punch");
INSERT INTO fymb_store VALUES (14, "#MelaninMonday", "Sticker", 2, "white");
INSERT INTO fymb_store VALUES (15, "#MelaninMonday", "Tote", 10, "pink lemonade");
SELECT * FROM fymb_store GROUP BY price;
