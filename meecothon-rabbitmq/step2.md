`kubectl create namespace rabbit`{{execute}}

`helm repo add stable https://kubernetes-charts.storage.googleapis.com`{{execute}}

`helm repo add bitnami https://charts.bitnami.com/bitnami`{{execute}}

`helm install my-rabbit bitnami/rabbitmq --version 7.5.6 --namespace rabbit -f rabbit-values.yaml`{{execute}}

`watch kubectl get services,statefulsets,pods --namespace rabbit`{{execute}}