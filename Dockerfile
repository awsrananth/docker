FROM ubuntu
CMD ["apt-get", "update", "-y"]
CMD ["apt-get", "install", "nginix", "-y"]
COPY style.css /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]
