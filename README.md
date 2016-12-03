# terraform-framework

Use [Terraform](https://www.terraform.io/) to automagically create instances on different providers.

# Files
## variables.tf
Where the variables are defined.

## providers.tf
The providers that will be used.

## aws.tf
Resource definitions for Amazon AWS.

## digitalocean.tf
Resource definitions for Digital Ocean.

## github.tf
Resource definitions for GitHub.

# Private files
## terraform.tfvars
Where you actually define the variables. This file is ignored by .gitignore.
