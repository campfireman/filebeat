ARG FILEBEAT_VERSION

FROM docker.elastic.co/beats/filebeat:${FILEBEAT_VERSION}

COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
# Create a directory to map volume with all docker log files
RUN mkdir /usr/share/filebeat/dockerlogs
RUN chown -R root /usr/share/filebeat/
RUN chmod -R go-w /usr/share/filebeat/