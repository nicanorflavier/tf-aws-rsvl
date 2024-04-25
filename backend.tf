# This backend configuration instructs Terraform to store its state in an S3 bucket.
/**
terraform {

  backend "s3" {
    bucket = "dev-xxxourbucketuniquenameherexxx"
    region = "us-east-1"
    key = "terraform-backend.tfstate"
    dynamodb_table = "dev-dynamodb-tf-state-lock"
    encrypt = true
  }
}

**/