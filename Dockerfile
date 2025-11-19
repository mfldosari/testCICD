# Use the ultra-lightweight busybox image to create a container with minimal size
FROM busybox:latest

# Set a working directory (optional but good practice)
WORKDIR /app

# Create a simple, self-contained index.html file directly in the container
# This guarantees the file exists and has content.
RUN echo '<!DOCTYPE html><html><head><title>Cloud Run Test</title><style>body{display:flex;justify-content:center;align-items:center;height:100vh;margin:0;font-family:sans-serif;background-color:#0f172a;color:#cbd5e1;text-align:center;}.box{padding:2rem;border:2px solid #334155;border-radius:0.5rem;box-shadow:0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);}</style></head><body><div class="box"><h1>Deployment Test Successful!</h1><p>The container is running correctly on Cloud Run.</p></div></body></html>' > index.html

# The Cloud Run service will just serve this single file using an included HTTP server (httpd)
EXPOSE 8080
CMD ["/bin/httpd", "-f", "-p", "8080", "-h", "/app"]
