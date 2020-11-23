For this scenario, Katacoda has just created a fresh Kubernetes cluster for you. Verify it's ready for your use.

`kubectl version --short && \
kubectl get componentstatus && \
kubectl get nodes && \
kubectl cluster-info`{{execute}}

The Helm package manager used for installing applications on Kubernetes is also available.

`helm version --short`{{execute}}

You can administer your cluster with the `kubectl` CLI tool or use the visual Kubernetes Dashboard.

First we need to wait for a started kubernetes dashboard.

`watch kubectl get pods -n kube-system -l app.kubernetes.io/name=kubernetes-dashboard`{{execute}}

Send Ctrl+C before continuing or click `clear`{{execute interrupt}}

Use this script to access the protected Dashboard.

`token.sh`{{execute}}