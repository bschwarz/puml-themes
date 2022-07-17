FROM openjdk:17-alpine
RUN \
    apk update && \
    apk upgrade && \
    apk add --no-cache \
            graphviz \
            font-noto-cjk \
&& \
    rm -rf /var/cache/apk/*