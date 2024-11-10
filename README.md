# Terraform Workspaces Demo
This repository is to demo usage of Terraform workspace. 

## Prerequisite
1. [Download](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) and [configure](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-quickstart.html) AWS CLI for your AWS Account. 
2. [Download](https://git-scm.com/downloads) Git. 
3. [Download](https://developer.hashicorp.com/terraform/install?product_intent=terraform) and install Terraform.

## Steps
1. Git clone the repository from git hub

    `git clone "url"`

2. Initialize Teraform
    
    `terraform init`

3. Create workspace "dev" and "staging"

    `terraform workspace new dev`

    `terraform workspace new staging`

4. List workspaces created

    `terraform workspaces list`

5. Create resources in dev and staging

    `terraform workspaces select "dev"`

    `terraform plan`

    `terraform apply`

    `terraform workspaces select "staging"`

    `terraform plan`

    `terraform apply`

6. Destroy resources in dev and staging

    `terraform workspaces select "dev"`

    `terraform destroy`

    `terraform workspaces select "staging"`

    `terraform destroy`