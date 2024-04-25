
variable "default_region" {
  description = "Default region where we want to create the AWS resources"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The S3 bucket for storing the Terraform state files, make sure this is unique to avoid conflicts"
  default     = "xxxourbucketuniquenameherexxx"
}

variable "dynamodb_table_name" {
  description = "The DynamoDB table for Terraform state locking"
  default     = "dynamodb-tf-state-lock"
}

#Below are all used for resource tagging
variable "environment_name" {
  description = "Name of our environment used for tagging"
  default     = "dev"
}

variable "project_name" {
  description = "The name of the project used for tagging"
  default     = "terraform-aws-remote-state-versioning-locking"
}

variable "owner_name" {
  description = "The name of the owner used for tagging"
  default     = "DevOps"
}