# Use the official NGINX image as the base image
FROM nginx:latest

# Copy custom NGINX configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/default.conf