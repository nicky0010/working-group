data "aws_ami" "ecs-amzn2" {
  owners = ["amazon"]

  filter {
    name   = "image-id"
    values = ["ami-0ee0c841e0940c58f"]
  }
}
