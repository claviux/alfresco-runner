FROM debian:jessie
ENV TERM xterm

COPY  entry.sh /
RUN chmod +x entry.sh

MKDIR -p /opt/alfresco-5.0.a

VOLUME /opt/alfresco-5.0.a

EXPOSE 8437

ENTRYPOINT /entry.sh
