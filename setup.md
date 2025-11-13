# EKS Cluster Setup for Playwright Tests

This guide describes how to deploy and execute Playwright tests on an AWS EKS cluster using Terraform and Kubernetes Jobs.

## 1. Terraform Setup
```aiexclude
make terraform-init
make terraform-plan
make terraform-apply
```

## 2. Kubernetes Resources
```aiexclude
make create-namespace
make create-secrets
make run-playwright-job
```

## 3. View Logs
```aiexclude
make get-playwright-logs
```
## Notes

- No real secrets are stored in this repo.
- All manifests use placeholder values.
- Safe for public GitHub distribution.