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
      version = "~> 4.3"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}

# Configure the AWS provider for the AWS root account, to get organisation account names
provider "aws" {
  alias  = "aws-root-account"
  region = "eu-west-2"
  assume_role {
    role_arn = "arn:aws:iam::${data.aws_organizations_organization.enrolment.master_account_id}:role/AWSOrganizationsListReadOnly"
  }
}
