FROM php:5.3-apache
MAINTAINER projects@ve3lsr.ca

WORKDIR /var/www/html
RUN git clone https://github.com/dg9vh/DG9VH-Dashboard-for-G4KLX-Software.git .
RUN rm -R .git
RUN cp dashboard.php index.php

