provider "aws" {
  profile = "default"
  region = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = var.S3_BUCKET_NAME
  acl    = "private"

  versioning {
    enabled = true
  }
}
