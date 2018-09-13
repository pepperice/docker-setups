FROM ubuntu:14.04

USER root

EXPOSE 80

WORKDIR /var/www

ADD ./provisioning /provisioning

RUN /provisioning/setup.sh

CMD ["/provisioning/run.sh"]
