terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.72.1"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"

  profile = "AWS_PROFILE"
}

provider "random" {}
