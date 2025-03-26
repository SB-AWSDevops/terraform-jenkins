terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "jenkins-terraform" {
  bucket = "bunny-jenkins-terraform"

  tags = {
    Name        = "suri-jenkins-terraform bucket"
    Environment = "Dev"
  }
}