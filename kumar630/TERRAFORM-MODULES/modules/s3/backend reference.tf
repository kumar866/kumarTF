# store the terraform state file in s3

provider "aws" {
  region = "us-west-2"

}
resource "aws_s3_bucket" "bucket" {
  bucket = "mybucket"

  tags = {
    Name = "My bucket"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}
