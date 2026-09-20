# Start from an official lightweight Python image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file first (for efficient caching)
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Tell Docker this container listens on port 5000
EXPOSE 5000

# The command that runs when the container starts
CMD ["python3", "app.py"]