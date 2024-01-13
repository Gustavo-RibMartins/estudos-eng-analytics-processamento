# create bucket

resource "aws_s3_bucket" "datalake_bucket" {
  bucket = "eng-analytics-datalake-estudos"
  tags = {
    "terraform" : "true",
    "estudos" : "eng. analytics"
  }
}

# create folders

resource "aws_s3_object" "transient-zone" {
  bucket = aws_s3_bucket.datalake_bucket.id
  key = "transient-zone/"
}

resource "aws_s3_object" "raw-data-zone" {
  bucket = aws_s3_bucket.datalake_bucket.id
  key = "raw-data-zone/"
}

resource "aws_s3_object" "trusted-zone" {
  bucket = aws_s3_bucket.datalake_bucket.id
  key = "trusted-zone/"
}

resource "aws_s3_object" "refined-zone" {
  bucket = aws_s3_bucket.datalake_bucket.id
  key = "refined-zone/"
}

resource "aws_s3_object" "scripts" {
  bucket = aws_s3_bucket.datalake_bucket.id
  key = "scripts/"
}

resource "aws_s3_object" "temp" {
  bucket = aws_s3_bucket.datalake_bucket.id
  key = "temp/"
}

resource "aws_s3_object" "logs" {
  bucket = aws_s3_bucket.datalake_bucket.id
  key = "logs/"
}

resource "aws_s3_object" "athena" {
  bucket = aws_s3_bucket.datalake_bucket.id
  key = "athena/"
}