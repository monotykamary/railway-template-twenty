FROM docker.io/twentycrm/twenty:v2.27.0@sha256:61a190e9dda07afc4d3d1b9b53fd1cd8cf23da8dfe4dd1f1176b1cbb0932106e
USER root
COPY start.sh /usr/local/bin/start-twenty-worker
RUN chmod 0755 /usr/local/bin/start-twenty-worker
USER 1000
CMD ["/usr/local/bin/start-twenty-worker", "yarn", "worker:prod"]
