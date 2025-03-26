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
  region = "eu-central-1"
}

resource "aws_s3_bucket" "jenkins-terraform" {
  bucket = "suri-jenkins-terraform"

  tags = {
    Name        = "jenkins-terraform bucket"
    Environment = "Dev"
  }
}