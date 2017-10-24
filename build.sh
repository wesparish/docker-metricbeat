#!/bin/bash

docker build -t wesparish/metricbeat:5.6.2 . && \
  docker tag wesparish/metricbeat:5.6.2 wesparish/metricbeat:latest && \
  docker push wesparish/metricbeat:5.6.2 && \
  docker push wesparish/metricbeat:latest
