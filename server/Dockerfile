FROM docker.io/twentycrm/twenty:v2.58.0@sha256:3f1b5140a2d0ce590462c7636c109ec30fd4008d6f31dd5e7f3149b4f8a0dbb4

USER root
COPY start.sh /usr/local/bin/start-twenty-server
RUN chmod 0755 /usr/local/bin/start-twenty-server
USER 1000
ENTRYPOINT ["/usr/local/bin/start-twenty-server"]
CMD ["node", "dist/main"]
