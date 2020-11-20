`kubectl create namespace rabbit`{{execute}}

`helm repo add bitnami https://charts.bitnami.com/bitnami`{{execute}}

`helm install my-rabbit bitnami/rabbitmq --version 7.5.6 --namespace rabbit -f rabbit-values.yaml`{{execute}}

`watch kubectl get services,statefulsets,pods --namespace rabbit`{{execute}}

Send Ctrl+C before continuing or click `clear`{{execute interrupt}}