FROM php:5.3-apache
MAINTAINER projects@ve3lsr.ca

WORKDIR /var/www/html
RUN git clone https://github.com/dg9vh/DG9VH-Dashboard-for-G4KLX-Software.git .
RUN rm -R .git
RUN ln -s dashboard.php index.php
RUN sed -i '/systemInfo/s/^<?php /<?php \/\//g' dashboard.php
RUN sed -i '/remoteControl/s/^<?php /<?php \/\//g' dashboard.php
RUN sed -i '/MMDVMTxingInfoAjax/s/^<?php /<?php \/\//g' dashboard.php
