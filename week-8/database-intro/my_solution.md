Release 5:<br>
1. <br>
SELECT * FROM states;<br><br>

2.<br>
SELECT * FROM regions;<br><br>

3.<br> 
SELECT state_name, population<br>
FROM states;<br><br>

4.<br>
SELECT state_name, population<br>
FROM states<br>
ORDER BY population DESC;<br><br>

5.<br>
SELECT state_name <br>
FROM states<br>
WHERE region_id = 7;<br><br>

6.<br>
SELECT state_name, population_density<br>
FROM states<br>
WHERE population_density > 50<br>
ORDER BY population_density ASC;<br><br>

7.<br>
SELECT state_name <br>
FROM states<br>
WHERE population BETWEEN 1000000 and 1500000;<br><br>

8.<br>
SELECT state_name, region_id <br>
FROM states<br>
ORDER BY region_id ASC;<br><br>

9.<br>
SELECT region_name<br>
FROM regions<br>
WHERE region_name LIKE '%Central';<br><br>

10.<br>
SELECT state_name, region_name<br>
FROM regions<br>
JOIN states<br>
ON states.region_id = regions.id<br>
ORDER BY region_id ASC;<br><br><br>


Release 6:<br>
![Schema](schema.png)
<br><br>

Release 7:<br>
<b>1. What are databases for?</b><br>
Databases are used for storing data in a structured way for easy search and access.<br><br>

<b>2. What is a one-to-many relationship?</b><br>
It's when 2 fundamentally different objects share a relationship where the first object belongs to the second object, and the second object has many types of the first object.<br><br>

<b>3. What is a primary key? What is a foreign key? How can you determine which is which?</b><br>
A primary key is a table column containing unique values. When a primary key is used as a column of another table and its values are used more than once in this other table, it is the foreign key of this other table.<br><br>

<b>4. How can you select information out of a SQL database? What are some general guidelines for that?</b><br>
Use the SELECT command to send a query to the table of choice. This will return a result set in the form of a table. The general guideline looks like this: SELECT column_name FROM table_name;
