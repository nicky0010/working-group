# ECS Practice Route Table
resource "aws_route_table" "ecs_practice" {
  vpc_id = "${aws_vpc.ecs_practice.id}"
}

resource "aws_route" "ecs_practice" {
  route_table_id = "${aws_route_table.ecs_practice.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = "${aws_internet_gateway.ecs_practice_igw.id}"
}

resource "aws_route_table_association" "ecs_practice_a" {
  subnet_id = "${aws_subnet.my_subnet_public_a.id}"
  route_table_id = "${aws_route_table.ecs_practice.id}"
}

resource "aws_route_table_association" "ecs_practice_b" {
  subnet_id = "${aws_subnet.my_subnet_public_b.id}"
  route_table_id = "${aws_route_table.ecs_practice.id}"
}
