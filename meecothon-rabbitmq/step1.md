For this scenario, Katacoda has just created a fresh Kubernetes cluster for you. Verify it's ready for your use.

`kubectl version --short && \
kubectl get componentstatus && \
kubectl get nodes && \
kubectl cluster-info`{{execute}}

`helm version --short`{{execute}}

`token.sh`{{execute}}