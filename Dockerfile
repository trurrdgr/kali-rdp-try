FROM danielguerra/ubuntu-xrdp
ENV TZ=Asia/Colombo
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
