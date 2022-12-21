CREATE TABLE books /*this line creates a table called books*/ 
    (
        id INTEGER,         /* creating the first column called id with an integer type */
        Name VARCHAR (25),         /* creating the second column called name with a text type */
        Rating INTEGER    /* creating the third column called rating with an integer type */
    );
    
INSERT INTO books VALUES   /*creating the lines*/
                (1, "Book1", 8), /* make sure to put a value in each column in the same order you created them */
                (2, "Book2", 9),
                (3, "Book3", 7);
                
                
SELECT * FROM books;    /*this line show you the entire table*/
