helm repo add argo https://argoproj.github.io/argo-helm
helm install --kube-context argocd-debugging \
  --create-namespace --namespace argocd \
  argo-cd \
  argo/argo-cd \
  --version 3.10.2 \
  --set server.extraArgs='{--insecure}'
