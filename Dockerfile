FROM debian:jessie
ENV TERM xterm

COPY  entry.sh /
RUN chmod +x entry.sh

RUN groupadd -g 983 postgress
RUN useradd -g 983 -u 984 -Md / -s /bin/bash postgress

RUN mkdir -p /opt/alfresco-5.0.a

VOLUME /opt/alfresco-5.0.a

EXPOSE 8437

ENTRYPOINT /entry.sh
