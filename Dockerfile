FROM ubuntu:20.04

# Install nginx and keep it simple for debugging
RUN apt-get update && apt-get install -y nginx

# Debug step: Check nginx installation
RUN nginx -v && ls -l /usr/sbin/nginx

# Copy static files
COPY style.css /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/

EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
