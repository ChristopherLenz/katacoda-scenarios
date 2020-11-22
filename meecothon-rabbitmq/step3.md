`helm repo add meecothonrepo https://christopherlenz.github.io/meecothon-helm-chart/`{{execute}}

`helm upgrade --install --set messagequeue.uri=my-rabbit:5672 producer meecothonrepo/meecothon-rabbitmq-producer`{{execute}}

`curl --location --request GET "http://producer:8080/health"`{{execute}}

`curl --location --request POST "http://producer:8080/api/v1/events/new/test" --header "Content-Type: application/json" --data-raw "keks"`{{execute}}

https://[[HOST_SUBDOMAIN]]-31000-[[KATACODA_HOST]].environments.katacoda.com