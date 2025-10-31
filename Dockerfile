# 1. Use an official Python runtime as a parent image
FROM python:3.10-slim

# 2. Set the working directory in the container to /app
WORKDIR /app

# 3. Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy your application code from the local 'app' folder
# into the container's /app directory (our WORKDIR)
COPY ./app .