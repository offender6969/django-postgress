# Use the official Python image as a base
FROM python:3.10

# Set environment variables for Python and Docker
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the project code into the container
COPY . /app/

# Expose port 8000 to the outside world
EXPOSE 8000

# Command to run the Gunicorn server
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "finalproj.wsgi:application"]

