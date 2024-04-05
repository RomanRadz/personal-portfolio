# syntax=docker/dockerfile:1

# Use a lightweight image for static content
FROM nginx:alpine

# Copy the entire project directory to Nginx document root
COPY . /usr/share/nginx/html/

# Expose port 80 (standard HTTP port)
EXPOSE 80

# Define the default server block to serve index.html
CMD ["nginx", "-g", "daemon off;"]

