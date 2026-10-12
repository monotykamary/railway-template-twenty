FROM docker.io/twentycrm/twenty:v2.46.0@sha256:bb4e94f0215cbd14c7356b0324d9b7ac10ccd077042cd6d5058ad02ef2080605

USER root
COPY start.sh /usr/local/bin/start-twenty-server
RUN chmod 0755 /usr/local/bin/start-twenty-server
USER 1000
ENTRYPOINT ["/usr/local/bin/start-twenty-server"]
CMD ["node", "dist/main"]
