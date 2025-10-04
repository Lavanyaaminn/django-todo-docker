# Use an official Python image as the base
FROM python:3.12

# Set the working directory inside the container
WORKDIR /app

# Copy dependencies file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy all project files into the container
COPY . .

# Run Django server
ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
