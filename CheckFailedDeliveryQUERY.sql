/*
This was my attempt at trying to see who haven't delivered their books by the due time, the issue however is, it does not seem to work.
So I decided to just stop trying, seeing as we had to deliver soon and after a few different ways of attempts this seems to be the best 
way to check the dates.

Written by C. Lynge
*/
SELECT Borrowed.dateReturn, Borrower.email FROM Borrowed, Borrower
WHERE borrower_Id = Borrowed.borrower_Id AND CONVERT(datetime, dateReturn, 101) > 03/22/19 AND CONVERT(datetime, dateReturn, 101)
< 03/25/19 