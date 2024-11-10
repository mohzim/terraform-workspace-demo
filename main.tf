provider "aws" {
    region = "ap-south-1"
  
}

variable "ami" {
    description = "AMI of ec2"
  
}

variable "ec2-instance-type" {
    description = "Instance type of EC2"
    type = map(string)
    default = {
      "dev" = "t2.micro"
      "staging" = "t3.micro"
      "production" = "t2.medium"
    }
  
}

module "crm-ec2" {
    source = "./modules/crm-app-infra"
    crm_ami = var.ami
    crm_instance_type = lookup(var.ec2-instance-type, terraform.workspace, "t2.micro")
    
}