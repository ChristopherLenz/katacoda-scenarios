`helm repo add meecothonrepo https://christopherlenz.github.io/meecothon-helm-chart/`{{execute}}


`export PRODUCER_IP=$(kubectl get services/producer-svc -n rabbit -o go-template="{{(index .spec.clusterIP)}}")`{{execute}}

`echo PRODUCER_IP=$PRODUCER_IP`{{execute}}

`curl --location --request GET "http://$PRODUCER_IP/health"; echo`{{execute}}

`curl --location --request POST "http://$PRODUCER_IP/api/v1/events/new/test" --header "Content-Type: application/json" --data-raw "keks"; echo`{{execute}}

https://[[HOST_SUBDOMAIN]]-31000-[[KATACODA_HOST]].environments.katacoda.com