FROM docker.elastic.co/beats/metricbeat:5.6.2

COPY metricbeat.yml /usr/share/metricbeat/metricbeat.yml

USER root

RUN chown root /usr/share/metricbeat/metricbeat.yml && \
    chmod 744 /usr/share/metricbeat/metricbeat.yml

ENV ELASTICSEARCH_URL="elasticsearch:9200"

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
