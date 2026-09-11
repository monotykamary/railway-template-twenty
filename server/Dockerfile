FROM docker.io/twentycrm/twenty:v2.39.5@sha256:7e6bd2f4103cafdcfdd759c65bd16debef253d455446505ceffbb37549a5ff7c

USER root
COPY start.sh /usr/local/bin/start-twenty-server
RUN chmod 0755 /usr/local/bin/start-twenty-server
USER 1000
ENTRYPOINT ["/usr/local/bin/start-twenty-server"]
CMD ["node", "dist/main"]
