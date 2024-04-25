#Define the S3 bucket to store the terraform state files
resource "aws_s3_bucket" "tf_state_bucket" {
  bucket  = "${var.environment_name}-${var.bucket_name}"
  #force_destroy = true
  tags = {
	  Name = var.bucket_name
  }
}

#Define the S3 bucket versioning
resource "aws_s3_bucket_versioning" "tf_state_bucket_versioning" {
  bucket = aws_s3_bucket.tf_state_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
