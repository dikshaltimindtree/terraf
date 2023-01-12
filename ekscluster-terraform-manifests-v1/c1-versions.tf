# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.63"
     }
  }
}

# Terraform Provider Block
provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAXZQOX4Y63YKMVHGF"
  secret_key = "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"
}
