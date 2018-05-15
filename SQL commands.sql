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


