FROM python

RUN apt-get update && \
    apt-get install zip -y && \
    mkdir -p /build/work 

ADD ./build.sh /lambda/build.sh

ENTRYPOINT ["/bin/sh", "/lambda/build.sh"]