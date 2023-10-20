terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.15.0"
    }
  }

  backend "s3" {
    bucket   = "remote-devops-state"
    key = "catalogue-dev"
    region = "us-east-1"
    dynamodb_table = "roboshop-remote-lock"
    # access_key = "AKIASGS2UUI55EU5ZLNM" 
    # secret_key = "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"
  }
}


provider "aws" {
  # Configuration options
  # you can give access key and secret key here, but security problem
  region = "us-east-1"
}