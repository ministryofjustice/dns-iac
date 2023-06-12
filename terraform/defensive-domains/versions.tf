terraform {
  backend "s3" {
    bucket  = "dns-terraform-state20211206173317424200000001"
    key     = "terraform-defensive-domains.tfstate"
    region  = "eu-west-2"
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.2"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}
