# create user
resource "aws_iam_user" "enganalytics" {
  name = "EngAnalytics"

  tags = {
    terraform = "true"
  }
}

# create access key
resource "aws_iam_access_key" "key_enganalytics" {
  user = aws_iam_user.enganalytics.name
}

output "secret" {
  value = aws_iam_access_key.key_enganalytics.encrypted_secret
}

# json policy
data "aws_iam_policy_document" "json_enganalytics" {
  statement {
    effect    = "Allow"
    actions   = ["*"]
    resources = ["*"]
  }
}

# policy to attach to user
resource "aws_iam_user_policy" "policy_enganalytics" {
  name   = "eng_analytics_policy"
  user   = aws_iam_user.enganalytics.name
  policy = data.aws_iam_policy_document.json_enganalytics.json
}
