FROM ubuntu
RUN apt update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt install -y apache2
COPY index.html /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
