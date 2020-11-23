`helm repo add meecothonrepo https://christopherlenz.github.io/meecothon-helm-chart/`{{execute}}

`helm upgrade --install -n rabbit \
--set messagequeue.uri=my-rabbit-rabbitmq:5672/mct \
--set messagequeue.exchangename=meecothon \
--set messagequeue.exchangetype=direct \
--set messagequeue.user=guest \
--set messagequeue.pass=guest \
--set hostname=producer.meecothon.com \
producer meecothonrepo/meecothon-rabbitmq-producer`{{execute}}

`export PRODUCER_IP=$(kubectl get services/producer-svc -n rabbit -o go-template="{{(index .spec.clusterIP)}}")`{{execute}}

`echo PRODUCER_IP=$PRODUCER_IP`{{execute}}

`curl --location --request GET "http://$PRODUCER_IP/health"; echo`{{execute}}

`curl --location --request POST "http://$PRODUCER_IP/api/v1/events/new/test" --header "Content-Type: application/json" --data-raw "keks"; echo`{{execute}}

https://[[HOST_SUBDOMAIN]]-31000-[[KATACODA_HOST]].environments.katacoda.com