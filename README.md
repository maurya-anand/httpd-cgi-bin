# httpd-cgi-bin

This is a template for a containerized CGI web application. It uses Docker to containerize the application, Apache2 for serving the web pages and CGI scripts, and MySQL as the backend database.

## Project Structure

- `web/`: Contains the Apache2 server configuration and CGI scripts.
- `container_db_volume/`: Contains the MySQL database files.
- `mysql_db_files/`: Contains SQL scripts for initializing the database.
- `compose.yml`: Docker Compose file for setting up the application.

## Setup

1. Clone the repository.
2. Set up the environment variables in the `.env` file (located at the root of the project).
3. Run `docker-compose up` to start the application.

> The server will be available on [http://localhost:80/](http://localhost:80/).

## Services

- `web`: The Apache2 server. It serves static files from `web/html` and CGI scripts from `web/cgi-bin`.
- `backend`: The MySQL server. It initializes the database using the `mysql_db_files/insert_data.sql` script.

## Database Connection

The CGI scripts connect to the MySQL server using the `DBI` Perl module. The connection details are specified in the `web/cgi-bin/db-test.pl` script.

## Docker Compose

The `compose.yml` file defines the services, volumes, and environment variables for Docker Compose.

## Apache2 Configuration

The Apache2 server configuration is located in the `web/httpd.conf` file.

The database related environment variables are configured through `PassEnv` directive.

## Using this Structure for Future Projects

Create a folder structure in the following template:

```bash
.
├── compose.yml
├── .env
├── mysql_db_files
│   └── insert_data.sql
├── README.md
└── web
    ├── cgi-bin
    │   ├── db-test.pl
    │   └── hello.cgi
    ├── Dockerfile
    ├── html
    │   ├── index.html
    │   └── project
    │       └── index.html
    └── httpd.conf
```

To use this structure for future projects, follow these steps:

1. Clone or download this repository to your local machine.
1. Replace the contents of `html`, `cgi-bin` and `mysql_db_files` directories with your own applications.
1. Update the Dockerfiles in each directory to match the requirements of your applications.
1. If necessary, update the compose.yml file to match the services of your applications.
1. Build and run your applications using Docker or Docker Compose as described in the sections above.
