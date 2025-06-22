# Use a lightweight Nginx image as the base
FROM nginx:alpine

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom Nginx configuration file into the container
# This file explicitly tells Nginx how to serve your index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your index.html file into the default Nginx webroot
# Ensure your HTML file is named 'index.html' in your GitHub repository
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80, which Nginx serves on by default
EXPOSE 80

# Command to run Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
