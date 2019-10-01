#!/bin/bash

# redis-db-credentials should already exists
#kubectl create secret generic redis-db-credentials --from-literal=REDIS_PASSWORD=

kubectl create configmap haproxy-config --from-file=haproxy.cfg -o yaml --dry-run | kubectl apply -f -
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
