/* Creates the library database */
CREATE DATABASE db_library

/* Sets the directory to db_library */
USE db_library
GO

/* Creates table of all the library branches */
CREATE TABLE table_Library_Branch (
Branch_ID int IDENTITY(1000,1) NOT NULL,
Branch_Name varchar(50),
Branch_Address varchar(50),
CONSTRAINT PK_Branch_ID PRIMARY KEY (Branch_ID)
);

/* Creates table of who is borrowing what */
CREATE TABLE table_Borrower (
Card_No int IDENTITY(2000,1) NOT NULL,
Borrower_Name varchar(50),
Borrower_Address varchar(50),
Borrower_Phone varchar(50),
CONSTRAINT PK_Borrower PRIMARY KEY (Card_no)
);

/* Creates table of all of the book publishers */
CREATE TABLE table_Publisher (
publisher_Name varchar(50) NOT NULL,
publisher_Address varchar(50),
publisher_Phone varchar(50),
CONSTRAINT PK_Publisher PRIMARY KEY (publisher_Name)
);

/* Creates table of all of the books in circulation */
CREATE TABLE table_Books (
Book_ID int IDENTITY(3000,1) NOT NULL,
Book_Title varchar(255),
Book_Publisher_Name varchar(50) FOREIGN KEY REFERENCES table_Publisher(publisher_Name),
CONSTRAINT PK_Books PRIMARY KEY (Book_ID)
);

/* Creates table of the number of book copies */
CREATE TABLE table_Book_Copies (
Book_ID int FOREIGN KEY REFERENCES table_Books(Book_ID),
Branch_ID int FOREIGN KEY REFERENCES table_Library_Branch(Branch_ID),
Number_Of_Copies int
);

/* Creates table of all book authors */
CREATE TABLE table_Book_Authors (
Book_ID int FOREIGN KEY REFERENCES table_Books(Book_ID),
Author_Name varchar(50)
);

/* Creates table of books on loan */
CREATE TABLE table_Book_Loans (
Book_ID int FOREIGN KEY REFERENCES table_Books(Book_ID),
Branch_ID int FOREIGN KEY REFERENCES table_Library_Branch(Branch_ID),
Card_No int FOREIGN KEY REFERENCES table_Borrower(Card_No),
Date_Out DATE,
Date_Due DATE
);