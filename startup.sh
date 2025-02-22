#!/bin/bash

# Bulk index the dataset
curl -u "elastic:=AR4wCe6XEO0lPWq-fsb" -X POST "http://localhost:9200/products/_bulk" -H "Content-Type: application/json" --data-binary @/usr/share/elasticsearch/products_large.ndjson
