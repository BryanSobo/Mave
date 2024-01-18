resource "aws_s3_bucket" "mavsmoneybucket" {
  bucket = "mavsmoneybucket"
  acl    = "private"
  versioning {
    enabled = false
}

  tags = {
    Name        = "Eu sou o homem"
    Environment = "cara"
  }
}

resource "aws_s3_bucket_public_access_block" "mavsmoneybucket" {
  bucket = aws_s3_bucket.mavsmoneybucket.bucket

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
