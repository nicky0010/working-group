data "aws_ami" "amazon2" {
  owners = ["amazon"]

  filter {
    name   = "image-id"
    values = ["ami-09d28faae2e9e7138"]
  }
}