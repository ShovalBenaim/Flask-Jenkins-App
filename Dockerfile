# Use the official Python image as the base image
FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the contents of the Flask-Jenkins-App directory into the /app directory
COPY . /app

# Install the required packages
RUN pip install Flask

# Set the environment variable for Flask
ENV FLASK_APP=Flask/app.py

# Expose port 5000 for Flask
EXPOSE 5000

# Command to run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]
