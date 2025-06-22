# Use a lightweight Nginx image as the base
FROM nginx:alpine

# Copy your index.html file into the default Nginx webroot
# Ensure your HTML file is named 'index.html' in your GitHub repository
COPY index.html /usr/share/nginx/html/

# Expose port 80, which Nginx serves on by default
EXPOSE 80

# Command to run Nginx when the container starts (default for nginx:alpine)
CMD ["nginx", "-g", "daemon off;"]
