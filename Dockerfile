# Use the official PostgreSQL image from Docker Hub
FROM postgres:latest

# Set environment variables for PostgreSQL
ENV POSTGRES_USER=airflow
ENV POSTGRES_PASSWORD=airflow
ENV POSTGRES_DB=airflow

# Copy SQL script that inserts initial data into the container
COPY medData.sql /docker-entrypoint-initdb.d/

# Expose PostgreSQL port
EXPOSE 5432
