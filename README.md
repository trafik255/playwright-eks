# Playwright on EKS

A clean, open-source example for running Playwright UI automation on AWS EKS using Terraform and Kubernetes Jobs.  
This repository provisions an EKS cluster and runs containerized browser tests inside ephemeral Kubernetes workloads.

## Features

- Terraform-managed EKS cluster
- VPC with public + private subnets
- Kubernetes namespace isolation
- CloudWatch log forwarding
- Job-based Playwright test execution
- Secret template (no real credentials stored)

## Commands

Provision infrastructure:
```
make terraform-init
make terraform-plan
make terraform-apply
```
## Apply Kubernetes resources:
```
make create-namespace
make create-secrets
make run-playwright-job
``` 
## Check logs:
```
make get-playwright-logs
```

This repo is safe for public use and contains **no credentials** or **environment-specific data**.
