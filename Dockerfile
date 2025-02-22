FROM docker.elastic.co/elasticsearch/elasticsearch:8.12.0

# Copy files with correct ownership
COPY --chown=elasticsearch:elasticsearch startup.sh /usr/share/elasticsearch/startup.sh
COPY --chown=elasticsearch:elasticsearch products_large.ndjson /usr/share/elasticsearch/products_large.ndjson