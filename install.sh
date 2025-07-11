#!/bin/bash

# Create namespace
kubectl apply -f namespace.yaml

# Add Helm repo
helm repo add fluent https://fluent.github.io/helm-charts
helm repo update

# Install Fluent Bit
helm install fluent-bit fluent/fluent-bit \
  --namespace logging \
  -f fluent-bit-values.yaml
