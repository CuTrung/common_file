ARG ELASTIC_VERSION
FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTIC_VERSION}
ENV discovery.type=single-node
ARG ELASTIC_PASSWORD
ENV ELASTIC_PASSWORD=${ELASTIC_PASSWORD}