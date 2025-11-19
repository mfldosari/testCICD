# Use the official lightweight Nginx image
FROM nginx:alpine

# Overwrite the default index.html with inline content
RUN echo '<!DOCTYPE html><html><head><title>My App v1</title></head><body><h1>Welcome to Version 1!</h1><p>This page is generated entirely from the Dockerfile.</p></body></html>' \
    > /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
