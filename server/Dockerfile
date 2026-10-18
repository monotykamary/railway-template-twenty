FROM docker.io/twentycrm/twenty:v2.48.0@sha256:43fab4bffacdcd63ff3c9257b7f8985a4424d81e9eb43982b9c16a841d555e52

USER root
COPY start.sh /usr/local/bin/start-twenty-server
RUN chmod 0755 /usr/local/bin/start-twenty-server
USER 1000
ENTRYPOINT ["/usr/local/bin/start-twenty-server"]
CMD ["node", "dist/main"]
