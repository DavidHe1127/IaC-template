terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.50.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"

  profile = "AWS_PROFILE"
}

