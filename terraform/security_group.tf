resource "aws_security_group" "ecs_practice" {
  name = "ecs-practice-sg"
  description = "Allow HTTP SSH Inbound Traffic"
  vpc_id = "${aws_vpc.ecs_practice.id}"
}

resource "aws_security_group_rule" "ecs_practice_in_ssh" {
  from_port = 22
  protocol = "tcp"
  security_group_id = "${aws_security_group.ecs_practice.id}"
  to_port = 22
  type = "ingress"
  description = "SSH Access"
}

resource "aws_security_group_rule" "ecs_practice_in_http" {
  from_port = 80
  protocol = "tcp"
  security_group_id = "${aws_security_group.ecs_practice.id}"
  to_port = 80
  type = "ingress"
  description = "HTTP Access"
}

resource "aws_security_group_rule" "ecs_practice_in_8080" {
  from_port = 8080
  protocol = "tcp"
  security_group_id = "${aws_security_group.ecs_practice.id}"
  to_port = 8080
  type = "ingress"
  description = "8080 Access"
}

resource "aws_security_group_rule" "ecs_practice_in_8081" {
  from_port = 8081
  protocol = "tcp"
  security_group_id = "${aws_security_group.ecs_practice.id}"
  to_port = 8081
  type = "ingress"
  description = "8081 Access"
}

resource "aws_security_group_rule" "ecs_practice_in_8082" {
  from_port = 8082
  protocol = "tcp"
  security_group_id = "${aws_security_group.ecs_practice.id}"
  to_port = 8082
  type = "ingress"
  description = "8082 Access"
}
