#!/bin/bash

launch.sh
kubectl apply -f /opt/deploy-ns.yaml > /opt/deploy-ns.log
rm /opt/deploy-ns.yaml

# kubectl apply -f /opt/deploy-po.yaml > /opt/deploy-po.log
# rm /opt/deploy-po.yaml
kubectl run nginx-challenge --image=nginx -n challenge-created-ns-0817 > /opt/deploy-po.log

echo "Started" 
echo 'done' > /opt/katacoda-background-finished