# Use official Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy application code
COPY app /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Flask port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
