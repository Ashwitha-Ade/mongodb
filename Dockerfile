# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Flask port
EXPOSE 5000

# Start Gunicorn server for app.py
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
