FROM liftoff/gateone
MAINTAINER Stefan Fritsch <stefan.fritsch@stat-up.com>

COPY 10server.conf /etc/gateone/conf.d/10server.conf
COPY 20authentication.conf /etc/gateone/conf.d/20authentication.conf
RUN rm /etc/gateone/conf.d/60docker.conf

EXPOSE 8701

CMD ["/usr/local/bin/update_and_run_gateone", "--log_file_prefix=/gateone/logs/gateone.log"]
