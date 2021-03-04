# ECR Access IAM Role
data "aws_iam_role" "ec2_ecs_practice" {
  name = "ecs-demo-role"
}

# Instance Role for ecs_practice
resource "aws_iam_instance_profile" "ec2_ecs_practice" {
  name = "${data.aws_iam_role.ec2_ecs_practice.name}"
  role = "${data.aws_iam_role.ec2_ecs_practice.name}"
}
