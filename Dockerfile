# Use a base image with Node.js
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Add a basic web server file
COPY . .

# Install HTTP server
RUN npm install -g http-server

# Expose port
EXPOSE 8080

# Run the server on container start
CMD ["http-server", "-p", "8080"]