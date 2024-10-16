terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "ananthagiri-state-dev1"
    key    = "eksctl-1"
    region = "us-east-1"
    dynamodb_table = "ananthagiri-lock-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}