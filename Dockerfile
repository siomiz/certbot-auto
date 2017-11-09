FROM debian:latest

LABEL maintainer="Tomohisa Kusano <siomiz@gmail.com>"
LABEL contributor="Jon Inazio Sánchez Martínez <captain06@gmail.com>"

ADD https://dl.eff.org/certbot-auto /

# ENTRYPOINT ["/bin/sh", "/certbot-auto"] does not work after deps install
RUN chmod +x certbot-auto

# finish all deps installtion
RUN /certbot-auto -n --version

# VOLUME ["/etc/letsencrypt"]

ENTRYPOINT ["/certbot-auto"]
