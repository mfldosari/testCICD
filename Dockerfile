# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Copy your custom HTML files into the default Nginx public directory
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
