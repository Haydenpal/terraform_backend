terraform {
  backend "s3" {
    bucket = "jasmine11042000"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"

  }
}
