FROM redis:8.2.9-alpine@sha256:fcb721d337db5587c02c2c0da0f98d294bd9bb7f69542d330983763328fe97c5
COPY start.sh /usr/local/bin/start-twenty-redis
RUN chmod 755 /usr/local/bin/start-twenty-redis
CMD ["/usr/local/bin/start-twenty-redis"]
