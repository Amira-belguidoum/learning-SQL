/*Create your own store! Your store should sell one type of things
like clothing or bikes, whatever you want your store to specialize in.
You should have a table for all the items in your store,
and at least 5 columns for the kind of data you think you'd need to store.
You should sell at least 15 items, and use select statements to order your 
items by price and show at least one statistic about the items.*/

CREATE TABLE my_store
    (
    Id INTEGER PRIMARY KEY,
    Name TEXT,
    Price REAL,
    Quantity INTEGER,
    Aisle INTEGER
    );

INSERT INTO my_store VALUES
            (1, "Amulet", 15.99, 5, 1),
            (2, "Neklace", 19.99, 14, 2),
            (3, "ring", 18.00, 4, 1),
            (4, "Bracelet", 10.00, 15, 2),
            (5, "Frendship Bracelet", 15.99, 10, 1),
            (6, "Locket", 20.00, 3, 2),
            (7, "Brooch", 18.50, 3, 1),
            (8, "Cuff links", 12.50, 2, 2),
            (9, "Pet Tag", 12.99, 4, 1),
            (10, "Earrings", 20.99, 8, 2),
            (11, "Tiara", 35.50, 2, 1),
            (12, "Pendant", 15.99, 14, 2),
            (13, "Choker", 13.00, 7, 1),
            (14, "Ankelt", 15.99, 2, 2),
            (15, "Torc", 15.99, 1, 1);

SELECT * FROM my_store ORDER BY Price;
SELECT Name, MAX(Quantity) FROM my_store;
