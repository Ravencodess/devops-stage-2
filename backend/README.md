# Backend - FastAPI with PostgreSQL

This directory contains the backend of the application built with FastAPI and a PostgreSQL database.

## Prerequisites

- Linux or Mac OS
- Python 3.8 or higher
- Poetry (for dependency management)
- PostgreSQL (ensure the database server is running)

## Installing Poetry

To install Poetry, follow these steps:

```bash
curl -sSL https://install.python-poetry.org | python3 -
```

## Add Poetry to your PATH if it's not automatically added:

```bash
# Example for Bash shell
export PATH="$HOME/.poetry/bin:$PATH"
```

Replace $HOME/.poetry/bin with the appropriate path where Poetry binaries are installed if different on your system. This ensures you can run Poetry commands from any directory in your terminal session.

## Setup Instructions

Navigate to the backend directory:

```bash
cd backend
```

## Install dependencies using Poetry:

```bash
poetry install
```

## Setup PostgreSQL

Follow these steps to install PostgreSQL on Linux and configure a user named app with password my_password and a database named app. Give all permissions of the app database to the app user.

Install PostgreSQL on Linux (example for Ubuntu):

```bash
sudo apt update
sudo apt install postgresql postgresql-contrib
```

## Switch to the PostgreSQL user and access the PostgreSQL shell:

```bash
sudo -i -u postgres
psql
```

## Create a user app with password my_password:

```sql
CREATE USER app WITH PASSWORD 'my_password';
Create a database named app and grant all privileges to the app user:
```

```sql
CREATE DATABASE app;
GRANT ALL PRIVILEGES ON DATABASE app TO app;
```

## Exit the PostgreSQL shell and switch back to your regular user.

```bash
exit
```

## Set database credentials

Edit the PostgreSQL environment variables located in the .env file. Make sure the credentials match the database credentials you just created.

```bash
POSTGRES_SERVER=localhost
POSTGRES_PORT=5432
POSTGRES_DB=app
POSTGRES_USER=app
POSTGRES_PASSWORD=my_password
```

## Set up the database with the necessary tables:

```bash
poetry run bash ./prestart.sh
```

## Run the backend server:

```bash
poetry run uvicorn app.main:app --reload
```

## Access the API

You can access the API endpoints:

http://localhost:8000
http://localhost:8000/docs (Swagger UI)
http://localhost:8000/redoc (ReDoc)

Use curl commands to interact with the API:

```bash
curl localhost:8000
curl localhost:8000/docs
curl localhost:8000/redoc
```
