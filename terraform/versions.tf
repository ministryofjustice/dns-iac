terraform {
  backend "s3" {
    bucket         = "dns-terraform-state20211206173317424200000001"
    dynamodb_table = "dns-terraform-state-lock"
    key            = "terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}
