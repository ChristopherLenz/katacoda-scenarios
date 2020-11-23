First we want to create a new namespace for our applications. We use `meecothon` for that.

`kubectl create namespace meecothon`{{execute}}

In order to use custom helm charts, we have to add additional repositories.

`helm repo add bitnami https://charts.bitnami.com/bitnami`{{execute}}

Now we can access charts of this repository via the prefix `bitnami`. 

Lets install RabbitMQ via HELM now

`helm install my-rabbit bitnami/rabbitmq --version 7.5.6 --namespace meecothon -f rabbit-values.yaml`{{execute}}

This will take 2-3min. While we wait you can check what other charts are available in this repository (`helm search`)? (https://helm.sh/docs/intro/using_helm/)

If you want check the state of RabbitMQ, you can do this via:

`watch kubectl get services,statefulsets,pods --namespace meecothon`{{execute}}

Send Ctrl+C before continuing or click `clear`{{execute interrupt}}