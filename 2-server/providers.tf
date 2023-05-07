terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

# **Store statefile in an s3 bucket** #

#   backend "s3" {
#     bucket = "terrform-bucket"
#     key    = "two-server/terraform.tfstate"
#   }
}

provider "aws" {
  region  = "us-east-1"
}