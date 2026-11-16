FROM docker.io/twentycrm/twenty:v2.58.2@sha256:cdf2da26925fd4f9a80eb6143f1815f74d93318b509dd20fe6b4f274f57a1c55
USER root
COPY start.sh /usr/local/bin/start-twenty-worker
RUN chmod 0755 /usr/local/bin/start-twenty-worker
USER 1000
CMD ["/usr/local/bin/start-twenty-worker", "yarn", "worker:prod"]
