FROM docker.io/twentycrm/twenty:v2.58.2@sha256:cdf2da26925fd4f9a80eb6143f1815f74d93318b509dd20fe6b4f274f57a1c55

USER root
COPY start.sh /usr/local/bin/start-twenty-server
RUN chmod 0755 /usr/local/bin/start-twenty-server
USER 1000
ENTRYPOINT ["/usr/local/bin/start-twenty-server"]
CMD ["node", "dist/main"]
