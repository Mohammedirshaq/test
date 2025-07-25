# Use the official Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the app code into the container
COPY app.py /app
# Install dependencies
RUN pip install flask

# Expose the port on which Flask will run
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
