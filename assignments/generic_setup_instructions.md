### Generic setup instructions
For this assignment we will be using Docker. In general, you can run Postgres without Docker. Docker makes the process of creating containers very simple and adding new databases, or some other technology very easy.

1. [Install and Run Docker](https://docs.docker.com/get-docker/)
2. `https://github.com/ishansgupta/ids706.git` (Clone this repository)
3. `cd ids706` (move to repository directory)
4. Download data, place the unzipped file in `postgres-data` inside `ids706` folder. This basically creates a folder mapping from local filesystem to the container.
5. `docker-compose up` (execute from ids706 folder) 
6. `docker exec -it ids-postgres /bin/bash`
7. `psql -U postgres -f /home/postgres/demo-big-en-20170815.sql postgres`
8.  Now the data has been loaded. The database name is  `demo`. Run  `psql -U postgres`
9.  Then run  `\c demo;`  (Same as USE DATABASE in MySQL)
10.  You should be able to run your queries now
