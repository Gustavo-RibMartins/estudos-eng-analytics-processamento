resource "aws_glue_catalog_database" "db-transient-zone" {
  name = "db-transient-zone"

  depends_on = [
    aws_s3_bucket.datalake_bucket
  ]
}

resource "aws_glue_catalog_database" "db-raw-zone" {
  name = "db-raw-zone"

  depends_on = [
    aws_s3_bucket.datalake_bucket
  ]
}

resource "aws_glue_catalog_database" "db-trusted-zone" {
  name = "db-trusted-zone"

  depends_on = [
    aws_s3_bucket.datalake_bucket
  ]
}

resource "aws_glue_catalog_database" "db-refined-zone" {
  name = "db-refined-zone"

  depends_on = [
    aws_s3_bucket.datalake_bucket
  ]
}