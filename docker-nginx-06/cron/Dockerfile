FROM ubuntu:25.10

COPY sendemail /etc/cron.d/sendemail
RUN chmod 644 /etc/cron.d/sendemail

RUN apt update
RUN apt install -y cron
RUN apt install -y sendemail
RUN apt install -y libio-socket-ssl-perl

RUN touch /var/log/cron.log
RUN chmod 666 /var/log/cron.log

ENTRYPOINT printenv > /etc/environment && cron -f
