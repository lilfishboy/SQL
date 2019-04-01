/*---
This is a query to select a book from the books table and then checking if that book is available from the books table
If status in Books is 1 and the Book id is 1 then Alice in Wonderland is available, if status on the same copy id = zero
then the book is not available and won't show up in the results.
---*/
SELECT Book.copy_Id, Book.title FROM Book 
INNER JOIN Books ON Books.copy_Id = Book.copy_Id
WHERE Book.copy_Id = 1 AND Books.status != 0