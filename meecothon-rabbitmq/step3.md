`helm repo add meecothonrepo https://christopherlenz.github.io/meecothon-helm-chart/`{{execute}}

`helm upgrade --install --set messagequeue.uri=my-rabbit-rabbitmq:5672 --set messagequeue.user=guest --set messagequeue.pass=guest producer meecothonrepo/meecothon-rabbitmq-producer --set hostname=producer.meecothon.com -n rabbit`{{execute}}

`export PRODUCER_IP=$(kubectl get services/producer-svc -o go-template='{{(index .spec.clusterIP)}}')`{{execute}}

`echo PRODUCER_IP=$PRODUCER_IP`{{execute}}

`curl --location --request GET "http://$PRODUCER_IP/health"`{{execute}}

`curl --location --request POST "http://$PRODUCER_IP/api/v1/events/new/test" --header "Content-Type: application/json" --data-raw "keks"`{{execute}}

https://[[HOST_SUBDOMAIN]]-31000-[[KATACODA_HOST]].environments.katacoda.com