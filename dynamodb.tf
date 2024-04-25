#Define the DynamoDB table for Terraform state locking
resource "aws_dynamodb_table" "dynamodb_tf_locks" {
  name = "${var.environment_name}-${var.dynamodb_table_name}"
  billing_mode = "PROVISIONED"
  read_capacity  = 5 #Change to your value as per your reference
  write_capacity = 5 #Change to your value as per your reference
  hash_key     = "LockID"
  deletion_protection_enabled = false #Change to true when you want to prevent the destruction of the DynamoDB table
  
  attribute {
    name = "LockID"
    type = "S"
  }

  point_in_time_recovery {
    enabled = true
  }

  server_side_encryption {
    enabled = true
  }

  tags = {
	  Name = var.dynamodb_table_name
  }

}