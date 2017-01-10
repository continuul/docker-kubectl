# docker-kubectl

Provides a Docker for Kubernetes kubectl

## Overview

http://kubernetes.io/docs/user-guide/kubectl-overview/

## Build

```bash
make
```

## Usage

```bash
alias kubectl="docker run --rm -it -v $HOME/.kube/:/root/.kube/ continuul/kubectl"
kubectl version
kubectl get pods
```
