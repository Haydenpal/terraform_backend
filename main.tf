provider "aws" {
    region = "us-east-1"

}

resource "aws_s3_bucket" "s3123" {
  bucket = var.bucket_data
}

resource "aws_s3_bucket" "s3_for_remote" {

    bucket = var.s3_name
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
