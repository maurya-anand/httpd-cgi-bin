FROM httpd:2.4
RUN apt-get update && apt-get install -y \
    perl \
    libdbi-perl \
    libdbd-mysql-perl \
    cpanminus \
 && rm -rf /var/lib/apt/lists/*
RUN cpanm CGI
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf