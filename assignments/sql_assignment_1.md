
## SQL Assignment   1

### Purpose
  
This assignment tests the usage of nested queries, joins and some usage of SQL functions. We might would be using the same dataset for future SQL assignments.

### Data  Schema
* [Data Schema](https://postgrespro.com/docs/postgrespro/10/apjs02.html)  
* [Download Data](https://edu.postgrespro.com/demo-big-en.zip)

### Usage  
Since we have already used a bit of MySQL in class, we will be using PostgresSQL in this assignment. Both use SQL as the query language, but some advanced functions might vary for Postgres and MySQL. 

You can choose either of the two options. Generally Docker's compatability with Windows OS is a bit sketchy. So the VCM setup is recommended.
* [Duke VCM setup](https://github.com/ishansgupta/ids706/blob/master/assignments/duke_vcm_setup.md)
* [Generic Setup](https://github.com/ishansgupta/ids706/blob/master/assignments/generic_setup_instructions.md)

### Questions

1. Which aircraft model has most number of seats?
2. Which month generated the most revenue? Hint: Use `date_trunc('month', book_date)` to extract month from date
3. Find the total number of scheduled departures in the month of November.  
4. In which month were there the greatest number of cancelled flights (status != 'Arrived')
5. Which 2 airports have the highest number of boarded passengers?
6. Find potential two legged flights from the flights table for 21st November. We will only consider "scheduled" travel. Consider all scheduled arrivals and departures to happen on 21st. A potential two legged flight is defined as given three airports A,B and C, there are two flights - one from A to B, one from B to C and the departure of flight from B to C is 30 minutes later to arrival the flight from A to B. Output should have two flight numbers, departure, intermediate and arrival cities. Limit to 15 rows
7. For the month of November, find the number of scheduled am flights and number of scheduled pm flights for each aircraft model, and the total number of flights, sorted in descending order by total number of flights. Your result should show the aircraft model, number of AM and PM flights. Hint : Use `CASE WHEN`

### Submission

Submit a .sql file as specified in `sample_submission.sql`
