# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set environment variable to avoid password prompt
ARG POSTGRES_PASSWORD
ENV PGPASSWORD=${POSTGRES_PASSWORD}

# Add PostgreSQL APT repository and install the correct version of the PostgreSQL client
RUN apt-get update && apt-get install -y wget gnupg2
RUN apt-get update && apt-get install -y postgresql-client-15

# Copy your Python script into the container
COPY elt_script.py /elt_script.py


# Run the Python script
CMD ["python", "/elt_script.py"]
