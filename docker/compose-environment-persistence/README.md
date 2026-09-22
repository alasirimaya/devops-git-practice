# Docker Compose Environment & Persistence

Week 4 DevOps practice using a multi-container application with Docker Compose.

## What I Practiced

- Configured environment variables using a `.env` file
- Removed hard-coded configuration from Docker Compose
- Used `.env.example` to document required variables safely
- Configured PostgreSQL with a named volume
- Tested database persistence after tearing down and recreating containers
- Verified backend, frontend, and PostgreSQL containers were running correctly

## Persistence Test

A test record was inserted into PostgreSQL before running `podman-compose down`.

After recreating the containers with `podman-compose up -d`, the record was queried again and remained in the database, confirming that the named volume preserved the data.

## Security

The real `.env` file is excluded from version control. `.env.example` contains placeholders only.
