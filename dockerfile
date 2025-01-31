# Use Linux as the base image
FROM ubuntu

# Install NGINX
RUN apt-get update && apt-get install nginx –y


# Optional: Copy a custom NGINX configuration file
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 8080 (the default HTTP port)
EXPOSE 8080

# Start NGINX when the container starts
CMD ["nginx“, "-g", "daemon off;"]

