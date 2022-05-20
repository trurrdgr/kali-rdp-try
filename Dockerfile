FROM alpine
ENV TZ=Asia/Colombo
RUN apk add --update curl && \
    rm -rf /var/cache/apk/*
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
