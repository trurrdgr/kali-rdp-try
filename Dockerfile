FROM alpine
ENV TZ=Asia/Colombo
RUN apk --no-cache add curl
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
