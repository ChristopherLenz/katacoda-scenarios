#!/bin/bash

launch.sh
kubectl apply -f /opt/deploy.yaml > /opt/deploy.log
rm /opt/deploy.yaml

echo "Started" 
echo 'done' > /opt/katacoda-background-finished