# Use the official Python image as the base image
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# Copy the application files to the container's working directory
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Flask app's port (replace 5000 with the actual port your app uses)
EXPOSE 5000

# Set the entry point to run the Flask app
CMD ["python", "app.py"]
