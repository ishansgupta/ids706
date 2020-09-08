
## SQL Assignment   1

### Purpose
  
This assignment tests the usage of nested queries, joins and some usage of SQL functions. We might would be using the same dataset for future SQL assignments.

### Data  Schema
* [Data Schema](https://postgrespro.com/docs/postgrespro/10/apjs02.html)  
* [Download Data](https://edu.postgrespro.com/demo-big-en.zip)

### Usage  

* Since we have already used a bit of MySQL in class, we will be using PostgresSQL in this assignment. Both use SQL as the query language, but some advanced functions might vary for Postgres and MySQL
* **Docker might have complications with different Operating Systems. You can find the setup instructions for Duke VM in duke_vcm_setup.md in this folder. You can skip the rest of this section and move to the questions. **
* You can use the data file in any Postgres database. If you don't have Postgres setup, use the setup instructions in the repository README. We haven't tried these Docker containers before, so please reach out as soon as you run into issues. Rather than trying to debug on your own.
* If you are using the containers. Place unzipped data file in the `postgres-data` folder
* Ensure docker containers are running `docker-compose up`
* Execute the container `docker exec -it ids-postgres /bin/bash`
* Run `psql -U postgres -f /home/postgres/demo-big-en-20170815.sql postgres` inside the container
* Now the data has been loaded. The database name is `demo`.  Run `psql -U postgres`
* Then run `\c demo;` (Same as USE DATABASE in MySQL)
* You should be able to run your queries now

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
