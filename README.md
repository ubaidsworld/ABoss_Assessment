# ABoss_Assessment
# Day 1: Cloud Infrastructure & Containerization   
1. Created application for training the model and saving it. Managed a FASTAPI to access the application using Python.
2. Created Dockerfile to containerize the application and verified its working with local installation. Pushed the docker image to Dockerhub.
3. Initiated and established an EKS cluster using CLI: `eksctl create cluster --name my-cluster --region region-code`. Deployed manually the application using Helm automation on EKS.
Day 2: CI/CD Pipeline
1. Generated Github Action workflow for the CICD as deploy.yaml file in github repository.
2. Wrote unit test for the train.py and main.py to verify the working of the application. And tested the application
3. Added the unit testnig inside the CICD to automate the complete process.
4. USed Github workflow strategy for the version control.
Day 3: Monitoring & Security
1. Using the following helm commands, I have installed the prometheus for metric collection and grafava for visualization.
   ```
   kubectl create namespace monitoring
   helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
   helm repo add grafana https://grafana.github.io/helm-charts
   helm repo update
   helm install prometheus prometheus-community/prometheus --namespace monitoring --set server.persistentVolume.enabled=false
   helm install grafana grafana/grafana --namespace monitoring --set adminPassword='password' --set service.type=LoadBalancer
   ```
2. Connected Graphana datasource with promethus : `http://prometheus-server.monitoring.svc.cluster.local:9090`
3. Implemented SSL using self signed mode of nginx for now.
