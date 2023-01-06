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
  access_key = "AKIAXZQOX4Y6R4U6THXS"
  secret_key = "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"
}
