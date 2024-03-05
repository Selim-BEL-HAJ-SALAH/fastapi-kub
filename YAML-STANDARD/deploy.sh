# Appliquer tous les fichiers de manière progressive

kubectl apply -f ./postgresql/secret-postgresql.yaml # secrets
kubectl apply -f ./postgresql/configmap-postgresql.yaml  # Configs
kubectl apply -f ./pgadmin/secret-pgadmin.yaml # secrets
kubectl apply -f ./pgadmin/configmap-pgadmin.yaml # Configs

kubectl apply -f ./postgresql/persistentvolumeclaim.yaml
kubectl apply -f ./postgresql/StatefulSet.yaml
kubectl apply -f ./postgresql/deployment.yaml
kubectl apply -f ./postgresql/service.yaml

kubectl apply -f ./fastapi/secret-fastapi.yaml #FastAPI secrets
kubectl apply -f ./fastapi/configmap-fastapi.yaml #FastAPI Configs

kubectl apply -f ./fastapi/deployment.yaml #FastAPI Deployment
kubectl apply -f ./fastapi/service.yaml #FastAPI service

kubectl apply -f ./pgadmin/deployment.yaml
kubectl apply -f ./pgadmin/service.yaml


kubectl apply -f ./fastapi/clusterissuer.yaml # Si nécessaire pour la gestion des certificats SSL
kubectl apply -f ./fastapi/hpa.yaml
kubectl apply -f ./fastapi/ingress-tls.yaml
