#!/bin/bash

grep ns1 -ie 'challenge-created-ns-4711'

# prepare task 4
if [ ! -f /opt/4_deploy.log ]; then
    kubectl run nginx-challenge --image=nginx -n challenge-created-ns-0817 > /opt/4_deploy.log
fi