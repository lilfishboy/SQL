/*---
This is a query to check who have borrowed alice in wonderland, before I made the statment, I modified the tables to simulate someone
using a interface to borrow the book. As of now I have been trying to add a trigger for when I modified the borrowed table to no avail.
Therefore you'll have to manually modify the table books for copy_id 1, status needs to be 0 and borrowed needs to have a record added
with the copy id to indicate that the book have been borrowed.

////////////////////////////////
/    Written by C. Lynge	   /
///////////////////////////////

SQL statement to check who borrowed alice in wonder land. Resulting email should be myMail@gmail.com if you use my DB.
---*/
SELECT Book.title, Borrower.email FROM Book 
INNER JOIN Books ON Books.copy_Id = Book.copy_Id
INNER JOIN Borrowed ON Borrowed.copy_Id = Books.copy_Id
INNER JOIN Borrower ON Borrower.borrowerId = Borrowed.borrower_Id
WHERE Book.copy_Id = 1 AND Books.status = 0
/* The three inner join makes use of each primary to foreign key constraint, in each table*/