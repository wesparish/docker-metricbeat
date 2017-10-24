#!/bin/bash

./scripts/import_dashboards -es $ELASTICSEARCH_URL

exec "$@"
