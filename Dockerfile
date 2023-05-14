# Base image
FROM docker.io/library/python:3.6.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the necessary files to the container
COPY main.py .
COPY static static
COPY templates templates

# Install the required Python packages
RUN pip install flask

# Expose the port on which the Flask app will run
EXPOSE 5000

# Set the environment variables
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run the Flask application
CMD ["flask", "run"]