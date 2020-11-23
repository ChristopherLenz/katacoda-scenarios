Let us add a further repository for this MeeCoThon.

`helm repo add meecothonrepo https://christopherlenz.github.io/meecothon-helm-chart/`{{execute}}

Before we can proceed we want to add our own VHOST. Please open the RabbitMQ Management UI and add the vhost `mct`.

Now we can install a sample applications which provides a REST service, which will publish messages to RabbitMQ.

`helm upgrade --install -n meecothon \
--set messagequeue.uri=my-rabbit-rabbitmq:5672/mct \
--set messagequeue.exchangename=meecothon \
--set messagequeue.exchangetype=direct \
--set messagequeue.user=guest \
--set messagequeue.pass=guest \
--set hostname=producer.meecothon.com \
producer meecothonrepo/meecothon-rabbitmq-producer`{{execute}}

We need the IP of the REST service
`export PRODUCER_IP=$(kubectl get services/producer-svc -n meecothon -o go-template="{{(index .spec.clusterIP)}}") && echo PRODUCER_IP=$PRODUCER_IP`{{execute}}

Let's check the health of the service.
`curl --location --request GET "http://$PRODUCER_IP/health"; echo`{{execute}}

If it is healthy we can trigger a new event. This will create a message with the routing-key `test`
`curl --location --request POST "http://$PRODUCER_IP/api/v1/events/new/test" --header "Content-Type: application/json" --data-raw "keks"; echo`{{execute}}