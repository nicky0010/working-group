data "aws_iam_policy_document" "ec2_role" {
  "statement" {
    sid    = ""
    effect = "Allow"

    principals {
      identifiers = [
        "ec2.amazonaws.com",
      ]

      type = "Service"
    }

    actions = ["sts:AssumeRole"]
  }
}
