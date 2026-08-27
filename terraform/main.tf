terraform {
  required_version = "~>1.11"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.5"
    }
  }
  backend "s3" {
    bucket       = "8696-tfstate-portfolio"
    key          = "app4/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }
}

provider "aws" {
  region = "us-east-1"
}