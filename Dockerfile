FROM nextcloud

COPY head.sh /head.sh

ENV PUID 1000
ENV PGID 1000

RUN cat /head.sh /entrypoint.sh > /entry.sh; mv /entry.sh /entrypoint.sh; chmod +x /entrypoint.sh


