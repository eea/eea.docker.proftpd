FROM ubuntu:16.04

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

RUN apt-get update -y 
RUN apt-get install -y proftpd

COPY proftpd.conf /etc/proftpd/proftpd.conf
COPY ldap.conf /etc/proftpd/conf.d/ldap.conf
COPY gioland_access_rights.conf /etc/proftpd/conf.d/gioland_access_rights.conf
COPY sdi_access_rights.conf /etc/proftpd/conf.d/sdi_access_rights.conf

COPY create_ssl_files.sh /create_ssl_files.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh /create_ssl_files.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 20 21 999 1026 1027 1028 1029 1030 
