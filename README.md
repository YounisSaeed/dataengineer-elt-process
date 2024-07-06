# Dataengineer ELT Process

This project sets up two PostgreSQL databases (`source_db` and `destination_db`) using Docker containers. The `source_db` is pre-populated with sample data for users, films, film categories, and actors.

## Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop) installed on your machine
- [Docker Compose](https://docs.docker.com/compose/install/) installed on your machine

## Project Structure
- `docker-compose.yml`: Contains the Docker Compose configuration.
- `source_db_init/`: Directory for initializing the source database.
  - `init.sql`: SQL script for initializing the source database.
- `elt/`: Directory containing ETL scripts and Dockerfile.
  - `Dockerfile`: Dockerfile for building the ETL environment.
  - `elt_script.py`: Python script for ETL operations.
 

## Getting Started

### 1. Clone the Repository

```sh
git clone -b postgres https://github.com/YounisSaeed/dataengineer-elt-process.git
cd dataengineer-elt-process
```

### 2. Start the Docker Containers
```sh
docker-compose up -d
```
ensure that data loaded in source db and destination db
```sh
docker exec -it <source_postgres_container_id_or_name> psql -U postgres -d source_db
docker exec -it <destination_postgres_container_id_or_name> psql -U postgres -d destination_db
```
```sh
\dt
select * from actors;
```
### 3. Troubleshooting
If you encounter any issues:
- Ensure Docker and Docker Compose are installed correctly.
- Ensure no other services are running on ports 5433 or 5434.
- Check the logs for any errors:
```sh
docker-compose logs
```

### 4.Cleanup
To stop and remove the containers, network, and volumes:
```sh
docker-compose down -v
```
