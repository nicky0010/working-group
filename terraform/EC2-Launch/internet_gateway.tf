resource "aws_internet_gateway" "ecs_practice_igw" {
  vpc_id = "${aws_vpc.ecs_practice.id}"
}
