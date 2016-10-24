FROM ubuntu:16.04

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

RUN apt-get update -y 
RUN apt-get install -y proftpd

ADD proftpd.conf /etc/proftpd/proftpd.conf
RUN chown root:root /etc/proftpd/proftpd.conf

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 21
EXPOSE 20

CMD ["proftpd", "--nodaemon", "-c", "/etc/proftpd/proftpd.conf"]
