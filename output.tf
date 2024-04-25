output "s3_bucket_name" {
  value = aws_s3_bucket.tf_state_bucket.bucket
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.dynamodb_tf_locks.name
}