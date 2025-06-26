# Use official slim Python base image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Create a non-root user (optional, more secure)
RUN adduser --disabled-password appuser

# Set work directory
WORKDIR /app

# Install system dependencies (for joblib etc.)
RUN apt-get update && apt-get install -y build-essential

# Install pip & dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy all code
COPY . .

# Switch to non-root user (optional)
USER appuser

# Expose port
EXPOSE 8000

# Run the app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
