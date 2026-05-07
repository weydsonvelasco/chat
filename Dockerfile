FROM image-registry.openshift-image-registry.svc:5000/openshift/php

COPY app.tar.gz /tmp/

RUN mkdir -p /tmp/app && \
    tar -xzf /tmp/app.tar.gz -C /tmp/app && \
    chmod +x /tmp/app/binary-app/start.sh

CMD ["/bin/bash","-c","/tmp/app/binary-app/start.sh && sleep infinity"]
