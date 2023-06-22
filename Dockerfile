# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Python requirements file
COPY requirements.txt ./

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python code to the working directory
COPY api.py .

# Expose the port on which the Flask app will listen
EXPOSE 5000

# Set the entry point command to run the Python app
CMD [ "python", "-u", "/app/api.py" ]