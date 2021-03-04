# ECS Practice VPC
resource "aws_vpc" "ecs_practice" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "ecs-practice"
  }
}
