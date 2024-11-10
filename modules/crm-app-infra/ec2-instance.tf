/* provider "aws" {
    region = "ap-south-1"  
} */

variable "crm_ami" {
  type = string
  description = "AMI to install CRM App"
}


variable "crm_instance_type" {
  type = string
  description = "EC2 Instance Type of CRM App"
}


resource "aws_instance" "crm_ec2" {
    ami = var.crm_ami
    instance_type = var.crm_instance_type
}

