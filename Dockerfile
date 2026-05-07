FROM image-registry.openshift-image-registry.svc:5000/openshift/php

COPY app.tar.gz /tmp/

RUN mkdir -p /tmp/app && \
    tar -xzf /tmp/app.tar.gz -C /tmp/app && \
    chmod +x /tmp/app/binary-app/start.sh && \
    echo '<h1>EX288 se continuar assim viro devops de verdade</h1>' > /tmp/app/index.php

EXPOSE 8080

CMD ["/tmp/app/binary-app/start.sh"]
