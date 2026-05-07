FROM registry.access.redhat.com/ubi9/ubi

COPY app.tar.gz /tmp/

RUN mkdir /app && \
    tar -xzf /tmp/app.tar.gz -C /app && \
    chmod +x /app/binary-app/start.sh

CMD ["/app/binary-app/start.sh"]
