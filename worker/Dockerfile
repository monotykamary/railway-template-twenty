FROM docker.io/twentycrm/twenty:v2.51.0@sha256:91793759486e63768b28cc7bebe6c06d73f5a604cdb8cc7d7b54f862542714be
USER root
COPY start.sh /usr/local/bin/start-twenty-worker
RUN chmod 0755 /usr/local/bin/start-twenty-worker
USER 1000
CMD ["/usr/local/bin/start-twenty-worker", "yarn", "worker:prod"]
