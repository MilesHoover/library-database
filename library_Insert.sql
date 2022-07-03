--------------------------------------------------------------------------

/* Sets the directory to db_library */

USE db_library
GO

--------------------------------------------------------------------------

/* Adds a library branch to table */

INSERT INTO table_Library_Branch (Branch_Name, Branch_Address)
VALUES 
	('Sharpstown', '3836  Alpha Avenue'),
	('Central', '3245  Heavner Avenue'),
	('Lexington', '683  Milford Street'),
	('Greene', '3516  Custer Street');

--------------------------------------------------------------------------

/* Adds a publisher to publisher table */

INSERT INTO table_Publisher (publisher_Name, publisher_Address, publisher_Phone)
VALUES
	('Avery', '663  Joanne Lane', '978-497-9198'),
	('Berkley', '3510  Locust View Drive', '415-984-4869'),
	('Blue Rider Press', '129  Valley View Drive', '617-666-0296'),
	('Daw', '1416  Water Street', '925-283-4441'),
	('Dutton', '599  Hemlock Lane', '956-447-6945'),
	('Putnam', '4363  Bird Street', '505-573-0090'),
	('Penguin', '4290  Alfred Drive', '718-215-0807'),
	('Plume', '2460  Rhode Island Avenue', '202-332-3450'),
	('Sentinel', '1135  Pooh Bear Lane', '864-624-9703'),
	('Viking', '870  Mount Olive Road', '678-962-9250');

--------------------------------------------------------------------------

/* Adds book title to book table */

INSERT INTO table_Books (Book_Title, Book_Publisher_Name)
VALUES 
	('The Lost Tribe', 'Avery'),
	('Fugitive Pieces', 'Plume'),
	('The Golden Bowl', 'Viking'), 
	('Belle du Seigneur', 'Penguin'), 
	('At the Mountains of Madness and Other Tales of Terror', 'Putnam'), 
	('The Yellow Wall-Paper', 'Berkley'), 
	('Never Let Me Go', 'Plume'), 
	('The Shining', 'Viking'), 
	('The Deptford Trilogy: Fifth Business/The Manticore/World of Wonders', 'Blue Rider Press'), 
	('Good Morning, Midnight', 'Daw'), 
	('Patriots Progress', 'Daw'), 
	('Billy Bathgate', 'Dutton'), 
	('Crash', 'Putnam'), 
	('Excellent Women', 'Penguin'), 
	('La dama número trece', 'Viking'), 
	('The Story of Lucy Gault', 'Blue Rider Press'), 
	('The Notebooks of Malte Laurids Brigge', 'Avery'), 
	('Outsider', 'Putnam'), 
	('The Count of Monte Cristo', 'Sentinel'), 
	('The Feast of the Goat', 'Sentinel');

--------------------------------------------------------------------------

/* Adds # of copies to copies table */
INSERT INTO table_Book_Copies (Book_ID, Branch_ID, Number_Of_Copies)
VALUES
	(3000, 1000, 2),
	( 3010, 1000, 2),
	( 3001, 1000, 2),
	( 3011, 1000, 2),
	( 3002, 1000, 2),
	( 3012, 1000, 2),
	( 3003, 1000, 2),
	( 3013, 1000, 2),
	( 3004, 1000, 2),
	( 3014, 1000, 2),
	( 3005, 1001, 2),
	( 3015, 1001, 2),
	( 3006, 1001, 2),
	( 3016, 1001, 2),
	( 3007, 1001, 2),
	( 3017, 1001, 2),
	( 3008, 1001, 2),
	( 3019, 1001, 2),
	( 3009, 1001, 2),
	( 3010, 1001, 2),
	( 3000, 1002, 2),
	( 3011, 1002, 2),
	( 3001, 1002, 2),
	( 3012, 1002, 2),
	( 3002, 1002, 2),
	( 3013, 1002, 2),
	( 3003, 1002, 2),
	( 3014, 1002, 2),
	( 3007, 1002, 2),
	( 3017, 1002, 2),
	( 3005, 1003, 2),
	( 3016, 1003, 2),
	( 3006, 1003, 2),
	( 3017, 1003, 2),
	( 3007, 1003, 2),
	( 3018, 1003, 2),
	( 3008, 1003, 2),
	( 3019, 1003, 2),
	( 3009, 1003, 2),
	( 3010, 1003, 2);

--------------------------------------------------------------------------

/* Adds a borrower to the borrower table */

INSERT INTO table_Borrower (Borrower_Name, Borrower_Address, Borrower_Phone)
VALUES
	('Eugene V Delgado', '4227  Hickory Ridge Drive', '702-638-8757'),
	('Kristy C Oneal', '157  Hummingbird Way', '781-941-5284'),
	('James F Garcia', '271  Locust Street', '229-793-0816'),
	('Ricardo S Perry', '1993  Concord Street', '704-586-2059'),
	('Barbara M Joseph', '429  Hall Street', '702-442-9255'),
	('Wendy F Billingsley', '612  Newton Street', '320-354-2340'),
	('Owen M Sheets', '1577  Bell Street', '212-213-8117'),
	('James S Juarez', '2542  Clay Street', '317-410-3385');

--------------------------------------------------------------------------

/* Adds Date_Out and Date_Due to loans table */

INSERT INTO table_Book_Loans (Book_ID, Branch_ID, Card_No, Date_Out, Date_Due)
VALUES
	(3000, 1000, 2000, '2019-01-01', '2019-03-01'),
	(3001, 1001, 2001, '2019-01-02', '2019-03-02'),
	(3002, 1002, 2002, '2019-02-03', '2019-04-03'),
	(NULL, NULL, 2003, '', ''),
	(3003, 1003, 2002, '2019-03-01', '2019-05-01'),
	(3004, 1000, 2004, '2019-03-04', '2019-05-04'),
	(3005, 1001, 2005, '2019-04-05', '2019-06-05'),
	(3006, 1002, 2006, '2019-04-06', '2019-06-06'),
	(3007, 1003, 2007, '2019-05-07', '2019-07-07'),
	(3008, 1000, 2000, '2019-06-08', '2019-08-08'),
	(3009, 1001, 2001, '2019-05-09', '2019-07-09'),
	(3010, 1002, 2002, '2019-07-10', '2019-09-10'),
	(3011, 1003, 2001, '2019-06-11', '2019-08-11'),
	(3012, 1000, 2004, '2019-08-12', '2019-10-12'),
	(3013, 1001, 2005, '2019-07-13', '2019-09-13'),
	(3014, 1002, 2006, '2019-09-14', '2019-11-14'),
	(3015, 1003, 2007, '2019-08-15', '2019-10-15'),
	(3016, 1000, 2000, '2019-10-16', '2019-12-16'),
	(3017, 1001, 2001, '2019-9-17', '2019-11-17'),
	(3018, 1002, 2002, '2019-11-18', '2020-01-18'),
	(3019, 1003, 2005, '2019-10-19', '2019-12-19'),
	(3000, 1000, 2000, '2019-12-04', '2019-02-04'),
	(3001, 1001, 2000, '2019-01-20', '2019-03-20'),
	(3002, 1002, 2001, '2019-11-21', '2020-01-21'),
	(3003, 1003, 2000, '2019-02-22', '2019-04-22'),
	(3004, 1000, 2001, '2019-12-04', '2020-02-04'),
	(3005, 1001, 2004, '2019-03-23', '2019-05-23'),
	(3006, 1002, 2005, '2019-12-04', '2020-02-04'),
	(3007, 1003, 2006, '2019-04-24', '2019-06-24'),
	(3008, 1000, 2007, '2019-01-25', '2019-03-25'),
	(3009, 1001, 2000, '2019-05-26', '2019-07-26'),
	(3010, 1002, 2001, '2019-03-27', '2019-05-27'),
	(3011, 1003, 2002, '2019-06-28', '2019-08-28'),
	(3012, 1000, 2002, '2019-04-29', '2019-06-29'),
	(3013, 1001, 2004, '2019-07-30', '2019-09-30'),
	(3014, 1002, 2005, '2019-05-31', '2019-07-31'),
	(3015, 1003, 2006, '2019-08-01', '2019-10-01'),
	(3016, 1000, 2007, '2019-06-02', '2019-08-02'),
	(3017, 1001, 2000, '2019-09-03', '2019-11-03'),
	(3018, 1002, 2001, '2019-07-04', '2019-09-04'),
	(3019, 1003, 2000, '2019-10-05', '2019-12-05'),
	(3000, 1000, 2007, '2019-08-06', '2019-10-06'),
	(3001, 1001, 2004, '2019-11-07', '2020-01-07'),
	(3002, 1002, 2005, '2019-09-08', '2019-11-08'),
	(3003, 1003, 2006, '2019-12-04', '2020-02-04'),
	(3004, 1000, 2007, '2019-10-09', '2019-12-09'),
	(3005, 1001, 2000, '2019-01-10', '2019-03-10'),
	(3006, 1002, 2001, '2019-11-11', '2020-01-11'),
	(3007, 1003, 2002, '2019-02-12', '2019-04-12'),
	(3008, 1000, 2006, '2019-12-04', '2020-02-04'),
	(3009, 1001, 2004, '2019-03-13', '2019-05-13');

--------------------------------------------------------------------------

/* Adds Authors_Name to authors table */

INSERT INTO table_Book_Authors (Book_ID, Author_Name)
VALUES
	(3000, 'Marianne Hudson'),
	(3001, 'Tony Williams '),
	(3002, 'Lindsay I. Howard '),
	(3003, 'Sheldon Nash '),
	(3004, 'Rex Barnes'),
	(3005, 'Hector Bishop '),
	(3006, 'Lee Fox'),
	(3007, 'Stephen King'),
	(3008, 'Michael C. Potter'),
	(3009, 'Rachel A. Sullivan'),
	(3010, 'Darnell M. Hargrove'),
	(3011, 'Louis J. Peterson'),
	(3012, 'Sarah L. Figgs'),
	(3013, 'Trudy J. Heim'),
	(3014, 'Trudy J. Heim'),
	(3015, 'James E. Bayless'),
	(3016, 'Tony Williams'),
	(3017, 'Stephen King'),
	(3018, 'Sheldon Nash'),
	(3019, 'Marie E. Maldonado');

--------------------------------------------------------------------------

/* 1.) How many copies of the book titled "The Lost Tribe" are owned by the
library branch whose name is "Sharpstown"? */

SELECT table_Books.Book_Title, table_Library_Branch.Branch_Name, table_Book_Copies.Number_Of_Copies 
FROM table_Books JOIN table_Book_Copies ON table_Books.Book_ID=table_Book_Copies.Book_ID
JOIN table_Library_Branch ON table_Book_Copies.Branch_ID=table_Library_Branch.Branch_ID
WHERE (
	table_Books.Book_Title = 'The Lost Tribe' AND table_Library_Branch.Branch_Name = 'Sharpstown'
);

--------------------------------------------------------------------------

/* 2.) How many copies of the book titled "The Lost Tribe" are owned by each
library branch? */

SELECT table_Books.Book_Title, table_Library_Branch.Branch_Name, table_Book_Copies.Number_Of_Copies 
FROM table_Books JOIN table_Book_Copies ON table_Books.Book_ID=table_Book_Copies.Book_ID
JOIN table_Library_Branch ON table_Book_Copies.Branch_ID=table_Library_Branch.Branch_ID
WHERE (
	table_Books.Book_Title = 'The Lost Tribe'
);

--------------------------------------------------------------------------

/* 3.) Retrieve the names of all borrowers who do not have any books checked
out. */

SELECT table_Borrower.Borrower_Name, table_Book_Loans.Book_ID
FROM table_Borrower JOIN table_Book_Loans ON table_Borrower.Card_No=table_Book_Loans.Card_No
WHERE (
	Book_ID IS NULL
);

--------------------------------------------------------------------------

/*4 .) For each book that is loaned out from the "Sharpstown" branch and 
whose DueDate is today, retrieve the book title, the borrower's name, and
the borrower's address. */

SELECT table_Borrower.Borrower_Name, table_Borrower.Borrower_Address, table_Books.Book_Title, table_Library_Branch.Branch_Name, table_Book_Loans.Date_Due
FROM table_Books JOIN table_Book_Loans ON table_Books.Book_ID=table_Book_Loans.Book_ID
JOIN table_Borrower ON table_Book_Loans.Card_No=table_Borrower.Card_No
JOIN table_Library_Branch ON table_Book_Loans.Branch_ID=table_Library_Branch.Branch_ID
WHERE (
	table_Library_Branch.Branch_Name = 'Sharpstown' AND table_Book_Loans.Date_Due = '2020-02-04'
);

--------------------------------------------------------------------------

/*5 .) For each library branch, retrieve the branch name and the total number
of books loaned out from that branch. */

SELECT table_Library_Branch.Branch_Name, COUNT(table_Book_Loans.Branch_ID)
FROM table_Library_Branch JOIN table_Book_Loans ON table_Library_Branch.Branch_ID=table_Book_Loans.Branch_ID
GROUP BY Branch_Name, table_Book_Loans.Branch_ID;
--------------------------------------------------------------------------

/*6 .) Retrieve the names, addresses, and the number of books checked out for
all borrowers who have more than five books checked out. */

SELECT table_Borrower.Borrower_Name, table_borrower.Borrower_Address, COUNT(table_Book_Loans.Card_No) AS '# of books checked out'
FROM table_Borrower JOIN table_Book_Loans ON table_Borrower.Card_No=table_Book_Loans.Card_No
GROUP BY Borrower_Name, Borrower_Address, table_Book_Loans.Card_No
HAVING COUNT(table_Book_Loans.Card_No) >= 5;

--------------------------------------------------------------------------

/*7 .) For each book authored (or co-authored) by "Stephen King", retrieve 
the title and the number of copies owned by the library branch whose name is "Central". */

SELECT table_Books.Book_Title, table_Book_Authors.Author_Name, table_Library_Branch.Branch_Name, table_Book_Copies.Number_Of_Copies
FROM table_Books JOIN table_Book_Authors ON table_Books.Book_ID=table_Book_Authors.Book_ID
JOIN table_Book_Copies ON table_Books.Book_ID=table_Book_Copies.Book_ID
JOIN table_Library_Branch ON table_Book_Copies.Branch_ID=table_Library_Branch.Branch_ID
WHERE table_Book_Authors.Author_Name = 'Stephen King' AND table_Library_Branch.Branch_Name = 'Central';

--------------------------------------------------------------------------

/* Testing */

SELECT * FROM table_Books 

SELECT * FROM table_Book_Authors 

SELECT * FROM table_Publisher

SELECT * FROM table_Library_Branch

SELECT * FROM table_Book_Copies 

SELECT * FROM table_Book_Loans

SELECT * FROM table_Borrower

--------------------------------------------------------------------------