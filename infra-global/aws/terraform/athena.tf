resource "aws_athena_workgroup" "wg-eng-analytics" {
  name = "wg-eng-analytics"

  configuration {
    enforce_workgroup_configuration    = true
    publish_cloudwatch_metrics_enabled = false

    result_configuration {
      output_location = "s3://eng-analytics-datalake-estudos/athena/"
    }
  }
  depends_on = [
    aws_s3_bucket.datalake_bucket,
    aws_s3_object.athena
  ]
}