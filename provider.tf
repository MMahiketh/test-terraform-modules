terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.10.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-prctc-state-files"
    key            = "test-module"
    region         = "us-east-1"
    dynamodb_table = "terraform-prctc-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
