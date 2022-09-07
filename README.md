# Terraform/Terragrunt Azure IaC

The terraform/terragrunt code in this directory will setup the infrastructure for application deployments on Azure. 

> This repo is designed to act as a base template to reference or clone when starting a new project. 

## Layout

The following directory tree shows the layout of the the configuration files in this repository.  Users should be able to customize the most common items by adjusting values in the env.yaml files (terraform/dev/env.yaml). 

These files consist of env variables that terragrunt injects into your terraform modules by means of `terragrunt.hcl` files.

Additional regions and/or environment directories can be created to maintain multiple deployments without changing the main terraform code.

```
terraform
└── modules             # Terraform modules accessed by terragrunt
└── terragrun.hcl       # Shared terraform code
└── terraform           # Terragrunt code for a specific envs
    ├── dev             # Terragrunt code for a specific environment (e.g. prod, stage, dev)
    |    └── env.yaml   # Environment specific configuration
    └── prod            # Terragrunt code for a specific environment
        └── env.yaml    # Environment specific configuration
```

## Prerequisites

- Azure account w appropriate permissions 
- Terraform
- Terragrunt
- Azure CLI

## Quickstart

First, use the Azure CLI to login to your Azure subscription. Verify you are using the correct subscription by running `az account show`. If you need to change your subscription, use the following commands to query a list of available subscriptions and set the appropriate one:

```
# Query subcriptions based on your account

az account list --query "[?user.name=='First.M.Last@example.com'].{Name:name, ID:id, Default:isDefault}" --output Table

# Set your active subscription

az account set --subscription "<sub>"
```

```
# Initialize
terragrunt run-all init

# Pre-check
terragrunt run-all plan

# Deploy
# WARNING: This will spin up infrastructure on your Azure account and incurs cost!
terragrunt run-all apply
```

