#!/bin/bash

# prepare task 4
if [ ! -f /opt/4_deploy.log ]; then
    kubectl run nginx-challenge --image=nginx -n challenge-created-ns-0817 > /opt/4_deploy.log
fi

grep ns4 -ie 'challenge-created-ns-0817'
[[ -f /root/ns4 ]] && [[ $(cat /root/ns4 | wc -l) -eq 1 ]] && echo done || exit 1