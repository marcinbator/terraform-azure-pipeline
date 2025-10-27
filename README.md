# terraform-azure-pipeline

Automated Terraform-Azure-GithubAction CI/CD configuration for simple Docker container with Python HTTP server

## Expected infrastructure

1. Azure cloud (set up repository secrets `AZURE_CLIENT_ID`, `AZURE_CLIENT_SECRET`, `AZURE_SUBSCRIPTION_ID` and `AZURE_TENANT_ID`)
2. AzureRM Terraform backend service (set up in `./terraform/main.tf`)
3. Azure Container Registry (ACR) service (set up repository var `ACR_LOGIN_SERVER`)
