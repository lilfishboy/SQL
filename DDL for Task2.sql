CREATE TABLE Book
    ([isbn] int NOT NULL, [author] varchar(30) NOT NULL, 
      [title] varchar(30) NOT NULL, [yearOfPublication]
    varchar (30) NOT NULL, [copy_Id] int)
;

CREATE TABLE Books 
( [copy_Id] int NOT NULL IDENTITY(1,1) , [loan_period] varchar(30) NOT NULL, 
 [status] int NOT NULL)
;

CREATE TABLE Borrowed 
([loan_Id] int NOT NULL IDENTITY (1,1) , [dateReturned] varchar(30) NOT NULL,
[copy_Id] int NOT NULL, [borrower_Id] int NOT NULL)
;

CREATE TABLE Borrower 
([borrowerId] int NOT NULL IDENTITY(1,1) , [type] int NOT NULL, [email] varchar(30) 
 NOT NULL, [loan_Id] int NOT NULL)
;

ALTER TABLE Book 
ADD CONSTRAINT PK_isbn PRIMARY KEY(isbn)

ALTER TABLE Books
ADD CONSTRAINT PK_copy_Id PRIMARY KEY(copy_Id)

ALTER TABLE Borrowed
ADD CONSTRAINT PK_loan_Id PRIMARY KEY(loan_Id)

ALTER TABLE Borrower
ADD CONSTRAINT PK_borrowerId PRIMARY KEY(borrowerId)

ALTER TABLE Book
ADD CONSTRAINT FK_copy_Id FOREIGN KEY (copy_Id) REFERENCES Books(copy_Id)

ALTER TABLE Borrowed
ADD CONSTRAINT FK_copy_Id_Borrowed FOREIGN KEY(copy_Id) REFERENCES Books(copy_Id)
ALTER TABLE Borrowed
ADD CONSTRAINT FK_borrowerId FOREIGN KEY(borrower_Id) REFERENCES Borrower(borrowerId)
