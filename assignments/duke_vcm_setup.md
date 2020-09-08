### Setup
For this assignment we will be using Docker. In general, you can run Postgres without Docker. Docker makes the process of creating containers very simple and adding new databases, or some other technology very easy.

1. * Reserve a VM - Ubuntu 18.04 LTS (Bionic Beaver) operating system (Ignore the Ssh )
	* ssh into the VM
	* Run `sudo -i`

2. `git clone https://github.com/ishansgupta/ids706.git` 
3. `cd ids706`
4. `chmod +x run_all.sh`
5. `./run_all.sh` (Installs docker, creates files for assignments)
6. `docker exec -it ids-postgres /bin/bash`
7. `psql -U postgres -f /home/postgres/demo-big-en-20170815.sql postgres`  (This takes ~15-20 minutes)
8. `psql -U postgres` (Enter postgres terminal)
9. `\c demo` (Demo is the name of the database) 
10. `SELECT * FROM flights LIMIT 2;` (Try a sample query) 
