```Minikube```

***1. deployent.yml***

***2. service.yml ===Type: LoadBalancer***

Use Tunnel to access appliction
cmd: minikube tunnel

**Follow the steps to run application without yml files**
1) kubectl create deployment example-deployment --image=nginx
2) kubectl expose deployment example-deployment --type=NodePort --name=example-service
3) kubectl expose deployment example-deployment --type=NodePort --name=example-service --port=80
4) kubectl get services example-service
5) minikube service example-service --url  {http://127.0.0.1:62173}
6) kubectl port-forward service/example-service 8080:62173
7) kubectl port-forward service/example-service 8080:80