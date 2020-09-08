
## Purpose 
* Docker containers for some of the databases to be used in IDS-706

## Installation
* [Install and Run Docker](https://docs.docker.com/get-docker/)
* Clone this repository
* Go to repository via `cd`
* Run `docker-compose up`

## Usage
* In the installation step we have created docker containers. So we have docker containers for different databases running on the system
* A volume mapping is created. Eg. Files in your `./redis-data` local directory will be mapped to `/home/redis` in your Redis container. Similar naming conventions are followed for other databases
* To see the running containers you can run `docker ps`
* To enter a container you can run `docker exec -it <container_name> /bin/bash`. Eg. `docker exec -it ids-mysql /bin/bash`
* Now you can use your database commands from the container. Eg.
	a) `docker exec -it ids-mysql /bin/bash`
	b) `mysql -u root -p`
	c) `CREATE database students;`
	d) `exit` (from mySQL shell)
	e) `mysql -u root -p students < /home/mysql/student_contacts.sql`
* You may choose to connect to these database containers via a GUI or another client, using `localhost` as the host and the port defined in the container.
