FROM docker.io/twentycrm/twenty:v2.37.0@sha256:63cafcc69ca18a7f402adbb519a0c7322ec5838866056f2c94d6ee38a06206a0
USER root
COPY start.sh /usr/local/bin/start-twenty-worker
RUN chmod 0755 /usr/local/bin/start-twenty-worker
USER 1000
CMD ["/usr/local/bin/start-twenty-worker", "yarn", "worker:prod"]
