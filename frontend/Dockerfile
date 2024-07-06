version: '3.8'

services:
  backend:
    build:
      context: ./backend
    container_name: fastapi_app
    ports:
      - "8000:8000"
    depends_on:
      - db
    environment:
      POSTGRES_SERVER: db
      POSTGRES_PASSWORD: password

  frontend:
    build:
      context: ./frontend
    container_name: nodejs_app
    ports:
      - "5173:5173"
    environment:
      VITE_API_URL: http://test.cloudranger.net

  db:
    image: postgres:latest
    container_name: postgres_db
    environment:
      POSTGRES_USER: app
      POSTGRES_PASSWORD: password
      POSTGRES_DB: app
    ports:
      - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data

  adminer:
    image: adminer
    container_name: adminer
    ports:
      - "8080:8080"

  nginx-proxy-manager:
    image: jc21/nginx-proxy-manager:latest
    container_name: nginx_proxy_manager
    ports:
      - "8090:81"

    volumes:
      - ./data:/data
      - ./letsencrypt:/etc/letsencrypt

volumes:
  postgres_data:
  data:
  letsencrypt:
vagrant@ubuntu-jammy:~/devops-stage-2$ cat frontend/Dockerfile
# Use the latest official Node.js image as a base
FROM node:latest

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . .

# Install dependencies
RUN npm install

# Expose the port the development server runs on
EXPOSE 5173

# Run the development server
CMD ["npm", "run", "dev", "--", "--host"]