FROM docker.io/twentycrm/twenty:v2.30.0@sha256:6850c6b839af472d368d134aab551bed308c7acd71a756d5a48727b3074ea0d7
USER root
COPY start.sh /usr/local/bin/start-twenty-worker
RUN chmod 0755 /usr/local/bin/start-twenty-worker
USER 1000
CMD ["/usr/local/bin/start-twenty-worker", "yarn", "worker:prod"]
