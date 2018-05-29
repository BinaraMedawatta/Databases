/*To select all(*) the data from a table */

SELECT *
FROM TABLE_NAME;


/* To select specific columns of a table*/

SELECT COLUMN_1, COLUMN_2,..., COLUMN_n
FROM TABLE_NAME;


/*DISTINCT - To select distinct(different) values*/

SELECT DISTINCT COLUMN_1, COLUMN_2,..., COLUMN_n
FROM TABLE_NAME;


/*To list the number of distinct rows*/

SELECT COUNT(DISTINCT COLUMN_NAME)
FROM TABLE_NAME;

SELECT COUNT(*) AS COLUMN_NAME_IDENTIFIER
FROM (SELECT DISTINCT COLUMN_NAME FROM TABLE_NAME);


/*To give a condition to the select statement*/

SELECT COLUMN_1, COLUMN_2,...,COLUMN_n
FROM TABLE_NAME
WHERE CONDITION;

/*When using the WHERE condition,
	if it's an integer
		COLUMN_NAME = INT_VALUE
	if it's a string
		COLUMN_NAME = 'STRING_VALUE'		(single quotation is required)
	if it's a date
		COLUMN_NAME = 'YEAR-MONTH-DATE'		(single quotation is required and the format must be YYYY-MM-DD)*/
		

/*Using AND syntax with WHERE condition*/

SELECT COLUMN_1, COLUMN_2, COLUMN_n
FROM TABLE_NAME
WHERE CONDITION_1 AND CONDITION_2 AND ... OR CONDITION_n;


/*Using OR syntax with WHERE condition*/

SELECT COLUMN_1, COLUMN_2, COLUMN_n
FROM TABLE_NAME
WHERE CONDITION_1 OR CONDITION_2 OR ... OR CONDITION_n;


/*Using NOT syntax with WHERE condition*/

SELECT COLUMN_1, COLUMN_2, COLUMN_n
FROM TABLE_NAME
WHERE NOT CONDITION;

/*You can use AND, OR, NOT syntaxes together to form complex expressions*/

Ex:
	SELECT * 
	FROM Customers
	WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'Munchen');

/*This selects all the records from the customers table having Germany as the country and Berlin or Munich as the city*/

Ex:
	SELECT *
	FROM Customers
	WHERE NOT Country = 'Germany' AND NOT Country = 'USA';

/*This selects all the records from the customers table not having Germany and USA as the country*/


/*ORDER BY syntax is used to order the selected records*/

SELECT COLUMN_1, COLUMN_2,...,COLUMN_n
FROM TABLE_NAME
ORDER BY COLUMN_1, COLUMN_2,...COLUMN_n ASC;

or

ORDER BY COLUMN_1, COLUMN_2,...COLUMN_n DESC;

/*ASC | DESC
	ORDER by ASC - Ascending order
	ORDER by DESC - Descending order
*/	

/*If you just type ORDER BY COLUMN_NAME*/
SELECT * 
FROM TABLE_NAME
ORDER BY COLUMN_NAME;

/*It will sort the selected rows by that column*/

/*Order by several columns*/

SELECT *
FROM TABLE_NAME
ORDER BY COLUMN_1 ASC, COLUMN_2 DESC;

/*In this way the table is ordered first in the ascending order of the COLUMN_1 and then in the decending order of the COLUMN_2*/

/*To insert data to a table, use the INSERT INTO syntax*/
/*To add data to selected columns you have to use the below method*/

INSERT INTO TABLE_NAME (COLUMN_1, COLUMN_2)
VALUES ('value1', 'value2');

Ex: 
	INSERT INTO Customers (CustomerName, City, Country)
	VALUES ('Cardinal', 'Stavanger', 'Norway');

/*If you insert all the data to the table then you don't need to give the column names*/

INSERT INTO TABLE_NAME
VALUES ('value1', 'value2',...);

Ex :
	INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
	VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

/*You can check if a column has null values by using the following syntax*/

SELECT COLUMN_NAMES
FROM TABLE_NAME
WHERE COLUMN_NAME IS NULL;

SELECT COLUMN_NAMES
FROM TABLE_NAME
WHERE COLUMN_NAME IS NOT NULL;

/*To update a record use the UPDATE statement*/

UPDATE TABLE_NAME
SET COLUMN_1 = value1, COLUMN_2 = value2...
WHERE CONDITION;

Ex :
	UPDATE Customers
	SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
	WHERE CustomerID = 1;
	
/*If you omit the WHERE clause then all the records will be updated, Therefore remember to use the WHERE clause*/

/*To delete a record from a table, use the DELETE syntax*/

DELETE FROM TABLE_NAME
WHERE CONDITION;

Ex :
	DELETE FROM Customers
	WHERE CustomerName='Alfreds Futterkiste';
	
/*To delete all the records from the table then you can use both of the following syntaxes*/

DELETE FROM TABLE_NAME;

/*or*/

DELETE * FROM TABLE_NAME

/*To find the minimum value or the maximum value of a column then use the MAX and MIN syntaxes*/

SELECT MAX(COLUMN_NAME)
FROM TABLE_NAME
WHERE CONDITION;

SELECT MIN(COLUMN_NAME)
FROM TABLE_NAME
WHERE CONDITION;

Ex :
	SELECT MIN(Price) AS SmallestPrice
	FROM Products;

/*Here AS syntax is used to display the min price as the smallest price*/

/*To get the count of the number of rows with a certain condition you can use the COUNT syntax*/

SELECT COUNT(COLUMN_NAME)
FROM TABLE_NAME
WHERE CONDITION;

/*To have the average of a certain coloumn use the AVG syntax*/

SELECT AVG(COLUMN_NAME)
FROM TABLE_NAME
WHERE CONDITION;

/*To have the sum of the values of a certain coloumn use tbe SUM syntax*/

SELECT SUM(COLUMN_NAME)
FROM TABLE_NAME
WHERE CONDITION;

/*SQL LIKE syntax*/

SELECT COLUMN_1, COLUMN_2
FROM TABLE_NAME
WHERE COLUMN_1 LIKE pattern;

/*pattern can be as follows

	'a%'	Finds any values that start with "a"
	'%a'	Finds any values that end with "a"
	'%or%'	Finds any values that have "or" in any position
	'_r%'	Finds any values that have "r" in the second position
	'a_%_%'	Finds any values that start with "a" and are at least 3 characters in length
	'a%o'	Finds any values that start with "a" and ends with "o"	*/
	
Ex :
	SELECT * 
	FROM Customers
	WHERE CustomerName LIKE 'a%';
	/*Here this selects the records starting from 'a' */
	

/*NOT LIKE syntax is used to select records which doen't match with the given pattern*/

SELECT COLUMN_1, COLUMN_2
FROM TABLE_NAME
WHERE COLUMN_1 NOT LIKE pattern;

Ex :
	SELECT * 
	FROM Customers
	WHERE CustomerName NOT LIKE 'a%';

/*This selects the records that do not start from 'a' */

/*Wildcards

	% - The percent sign represents zero, one, or multiple characters
	_ - The underscore represents a single character
	
	'a%'	Finds any values that starts with "a"
	'%a'	Finds any values that ends with "a"
	'%or%'	Finds any values that have "or" in any position
	'_r%'	Finds any values that have "r" in the second position
	'a_%_%'	Finds any values that starts with "a" and are at least 3 characters in length
	'a%o'	Finds any values that starts with "a" and ends with "o"
*/

Ex :
	SELECT * 
	FROM Customers
	WHERE City LIKE '_erlin';
	/*This selects all the rows that contain citys that starts with any character followed by erlin*/
	
/*To select the records which doesn't match with the given pattern use the [!charlist] wildcard*/

SELECT *
FROM TABLE_NAME 
WHERE COLUMN_NAME LIKE '[!bsp]%';

Ex : 
	SELECT * 
	FROM Customers
	WHERE City LIKE '[!bsp]%';

/*This selects the records that do not start with b, s or p*/

SELECT * FROM Customers
WHERE City NOT LIKE '[bsp]%';

/*This is also the same*/

/*IN operator is a shorthand for multiple OR syntaxes*/

SELECT COLUMN_NAME
FROM TABLE_NAME
WHERE COLUMN_NAME IN (value1, value2, ...);

/*This is the same as */

SELECT COLUMN_NAME
FROM TABLE_NAME
WHERE COLUMN_NAME = value1 OR COLUMN_NAME = value2 OR COLUMN_NAME = ..... ;

/*You can use NOT IN syntax to select the records which do not match with the given condition*/

SELECT COLUMN_NAME
FROM TABLE_NAME
WHERE COLUMN_NAME NOT IN (value1, value2,...);

Ex : 
	SELECT * 
	FROM Customers
	WHERE Country NOT IN ('Germany', 'France', 'UK');

/*IN can be also used to have the SELECT statement inside another SELECT statement*/

Ex :
	SELECT * 
	FROM Customers
	WHERE Country IN (SELECT Country FROM Suppliers);







/*
SQL SELECT TOP
