resource "aws_subnet" "my_subnet_public_a" {
  cidr_block              = "10.0.1.0/24"
  vpc_id                  = "${aws_vpc.ecs_practice.id}"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = "true"
}

resource "aws_subnet" "my_subnet_public_c" {
  cidr_block              = "10.0.2.0/24"
  vpc_id                  = "${aws_vpc.ecs_practice.id}"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = "true"
}
