# # syntax=docker/dockerfile:1

# FROM python:3.8-slim-buster

# WORKDIR /app

# COPY requirements.txt requirements.txt
# RUN pip3 install -r requirements.txt

# COPY . .

# # CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
# ENTRYPOINT [ "python" , "app.py" ]


# # Use the official Python image as base
# FROM python:3.9-slim

# # Set the working directory in the container
# WORKDIR /app

# # Copy the requirements file into the container
# COPY requirements.txt .

# # Install Python dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# # Copy the Python script into the container
# COPY . .

# # Define the command to run the Python script when the container starts
# CMD ["python", "app.py"]

# Use the official Python image as base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python script into the container
COPY . .

# Expose port 5000 to the outside world
EXPOSE 5000

# Define the command to run the Flask application when the container starts
CMD ["python", "app.py"]
