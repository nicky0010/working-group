# ECR Access IAM Role
data "aws_iam_role" "ec2_ecs_practice" {
  name = "ecs-demo-role"
}

# Instance Role for ecs_practice
resource "aws_iam_instance_profile" "ec2_ecs_practice" {
  role = "${data.aws_iam_role.ec2_ecs_practice.name}"
}
