#This Terraform Code Deploys Basic VPC Infra.
provider "aws" {
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    region = var.aws_region
}

terraform {
  backend "s3" {
    encrypt = true   
    bucket = "terraformdynamodb"
    dynamodb_table = "terraform-state"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}

# terraform {
#   required_version = ">= 0.12.14" #Forcing which version of Terraform needs to be used
#   required_providers {
#     aws = {
#       version = "<= 3.0.0" #Forcing which version of plugin needs to be used.
#       source = "hashicorp/aws"
#     }
#   }
# }

