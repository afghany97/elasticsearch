# startup.sh
#!/bin/bash

# Start Elasticsearch in the background
/usr/local/bin/docker-entrypoint.sh &

# Wait for Elasticsearch to be ready
until curl -u "elastic:$ELASTIC_PASSWORD" -s -o /dev/null http://localhost:9200; do
  sleep 5
  echo "Waiting for Elasticsearch..."
done

# Bulk index the dataset
curl -u "elastic:$ELASTIC_PASSWORD" -X POST "http://localhost:9200/products/_bulk" -H "Content-Type: application/json" --data-binary @/usr/share/elasticsearch/products_large.json

# Keep container running
tail -f /dev/null
