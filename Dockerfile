FROM ubuntu
CMD ["apt-get", "update"]
CMD ["apt-get", "install", "nginix", "-y"]
COPY style.css /usr/share/nginx/html/style.css
COPY index.html /usr/share/nginx/html/index.html
