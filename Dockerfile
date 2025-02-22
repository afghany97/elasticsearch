FROM docker.elastic.co/elasticsearch/elasticsearch:8.12.0
COPY startup.sh /usr/share/elasticsearch/startup.sh
COPY products_large.json /usr/share/elasticsearch/products_large.json
RUN chmod +x /usr/share/elasticsearch/startup.sh