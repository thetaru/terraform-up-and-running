terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = "1.7.5"
}

# default provider
provider "aws" {
  region = "us-east-2"
}

# alias provider
provider "aws" {
  region = "us-east-2"
  alias = "primary"
}

provider "aws" {
  region = "us-west-1"
  alias = "replica"
}

