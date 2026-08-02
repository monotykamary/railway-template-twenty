FROM twentycrm/twenty:v2.26.0
USER root
COPY start.sh /usr/local/bin/start-twenty-worker
RUN chmod 0755 /usr/local/bin/start-twenty-worker
USER 1000
CMD ["/usr/local/bin/start-twenty-worker", "yarn", "worker:prod"]
