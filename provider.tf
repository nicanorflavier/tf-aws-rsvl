terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.46.0"
    }
  }

}

# Configure the AWS Provider
provider "aws" {
  region = var.default_region

  default_tags {
    tags = {
      Environment = var.environment_name
      Project = var.project_name
      Owner = var.owner_name
    }
  }

}