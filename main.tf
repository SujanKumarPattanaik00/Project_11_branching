terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "infra_bucket" {
  bucket = "project-11-infra-demo-2026"

  tags = {
    Name        = "Project-11-Infrastructure"
    Environment = "Development"
  }
}
