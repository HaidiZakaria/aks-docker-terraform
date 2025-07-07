🚀 Flask App on Azure Kubernetes Service (AKS) with GitHub Actions & Docker
This project demonstrates a complete CI/CD pipeline to containerize a simple Flask web application, push it to Docker Hub, and deploy it on Azure Kubernetes Service (AKS) — all automated using GitHub Actions.

📦 Stack Used
Python / Flask

Docker

GitHub Actions

Azure AKS

kubectl

Terraform (for infrastructure provisioning - optional)

Azure CLI

🛠️ Project Structure


.
├── app.py                     # Flask application
├── Dockerfile                 # Docker build instructions
├── k8s/
│   ├── deployment.yaml        # Kubernetes Deployment
│   └── service.yaml           # Kubernetes Service (LoadBalancer)
├── .github/
│   └── workflows/
│       └── deploy.yml         # GitHub Actions CI/CD Pipeline
└── README.md



🚀 GitHub Actions CI/CD Flow
Trigger: Push to master branch

Docker Build & Push: Builds image and pushes to Docker Hub

Kubernetes Deploy: Uses kubectl with AKS kubeconfig to deploy the updated image

🔧 How to Run
1. Clone the repo
git clone https://github.com/HaidiZakaria/aks-docker-terraform.git
cd aks-docker-terraform
2. Add your GitHub Secrets:
DOCKER_USERNAME

DOCKER_PASSWORD

KUBE_CONFIG_DATA (base64-encoded kubeconfig)

3. Commit and push:
git add .
git commit -m "initial deployment"
git push origin master
GitHub Actions will automatically build the Docker image and deploy to AKS.

🌐 Accessing the App
After successful deployment, check the external IP:

kubectl get svc
Open the IP in your browser — you should see the Flask app running!

📚 Skills Demonstrated
Docker containerization

GitHub Actions for CI/CD

Kubernetes deployments on AKS

Managing cloud infrastructure

Git CLI and repo management

Debugging and troubleshooting real-world deployment issues
