# Use the latest official Python image as a base
FROM python:latest

# Install Node.js and npm
RUN apt-get update && apt-get install -y \
    nodejs \
    npm

# Install Poetry using pip
RUN pip install poetry

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . .

# Install dependencies using Poetry
RUN poetry install

# Expose the port FastAPI runs on
EXPOSE 8000

# Run the prestart script and start the server
CMD ["sh", "-c", "poetry run bash ./prestart.sh && poetry run uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload"]