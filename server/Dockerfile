FROM docker.io/twentycrm/twenty:v2.41.0@sha256:47bcefe4e497ceef232f149153a4a61379830f5c898b7da71a5b0e21fd5ea916

USER root
COPY start.sh /usr/local/bin/start-twenty-server
RUN chmod 0755 /usr/local/bin/start-twenty-server
USER 1000
ENTRYPOINT ["/usr/local/bin/start-twenty-server"]
CMD ["node", "dist/main"]
