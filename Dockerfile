# Use the official lightweight Nginx image as the base
FROM nginx:alpine

# Copy your custom HTML file into the default Nginx public directory
# The build context '.' is the root of your repository (where the Dockerfile is)
COPY index.html /usr/share/nginx/html/index.html

# Copy the rest of the application files
# You might want to copy everything else, if you have CSS/JS
# COPY . /usr/share/nginx/html

# Expose port 80 (Nginx default)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
