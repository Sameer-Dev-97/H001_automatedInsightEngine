# TrendSpotter: The Automated Insight Engine
# Docker Image Configuration

FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY generate_mock_data.py .
COPY main.py .

# Create necessary directories
RUN mkdir -p Output Screenshots

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Default command
CMD ["python", "main.py"]

