resource "aws_glue_catalog_database" "db-eng-analytics" {
  name = "db-eng-analytics"

  depends_on = [
    aws_s3_bucket.datalake_bucket
  ]
}