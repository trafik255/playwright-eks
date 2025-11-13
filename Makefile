# --- Terraform ---

terraform-init:
	terraform -chdir=terraform init

terraform-validate:
	terraform -chdir=terraform validate

terraform-plan:
	terraform -chdir=terraform plan

terraform-apply:
	terraform -chdir=terraform apply -auto-approve

terraform-destroy:
	terraform -chdir=terraform destroy -auto-approve

# --- Kubernetes Namespace ---

create-namespace:
	kubectl apply -f kubernetes/namespace-playwright-tests.yaml

# --- Kubernetes Secrets (template only) ---

create-secrets:
	kubectl apply -f kubernetes/playwright-secret-template.yaml

# --- Playwright Job ---

run-playwright-job:
	kubectl apply -f kubernetes/playwright-job.yaml

get-playwright-jobs:
	kubectl get jobs -n playwright-tests

get-playwright-pods:
	kubectl get pods -n playwright-tests

get-playwright-logs:
	POD=$$(kubectl get pod -n playwright-tests -l job-name=playwright-tests-job -o jsonpath="{.items[0].metadata.name}"); \
	kubectl logs -n playwright-tests $$POD

# --- Cleanup ---

clean:
	rm -rf .terraform .terraform.lock.hcl
