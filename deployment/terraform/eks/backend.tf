terraform {
   required_version = "~> 1.8.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "eks-baket11"
    region         = "eu-central-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "Locking-Files"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
