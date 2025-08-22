# Terraform infrastructure

## Local run

1. Have `terraform` installed
2. Go to `./terraform` directory
3. Copy `./example/example.env` file contents to `./.env` file and set proper variables
4. Run `./scripts/load_env.ps1` (or `.sh`) file to setup variables in your terminal
5. Copy `./example/terraform.tfvars.example` file contents to `./terraform.tfvars` file and set `admin_password` variable
6. Run `terraform plan`
