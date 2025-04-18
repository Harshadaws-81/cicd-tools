terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.90.0"
    }
  }
  backend "s3" {
    bucket         = "harsha81-remote-state"
    key            = "expense-jenkins"
    region         = "us-east-1"
    dynamodb_table = "81s-locking"
  }
}

provider "aws" {
  # configuration options
  region = "us-east-1"
}
