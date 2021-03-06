resource "aws_security_group" "ecs_practice" {
  name        = "ecs-demo-sg"
  description = "Allow HTTP SSH Inbound Traffic"
  vpc_id      = "${aws_vpc.ecs_practice.id}"
}

resource "aws_security_group_rule" "ecs_practice_in_ssh" {
  from_port         = "${var.security_group_rule["ecs_practice_in_ssh.from_port"]}"
  protocol          = "${var.security_group_rule["ecs_practice_in_ssh.protocol"]}"
  security_group_id = "${aws_security_group.ecs_practice.id}"
  to_port           = "${var.security_group_rule["ecs_practice_in_ssh.to_port"]}"
  type              = "${var.security_group_rule["ecs_practice_in_ssh.type"]}"
  description       = "${var.security_group_rule["ecs_practice_in_ssh.description"]}"
  cidr_blocks       = ["${var.security_group_rule["ecs_practice_in_ssh.cidr_blocks"]}"]
}

resource "aws_security_group_rule" "ecs_practice_in_http" {
  from_port         = "${var.security_group_rule["ecs_practice_in_http.from_port"]}"
  protocol          = "${var.security_group_rule["ecs_practice_in_http.protocol"]}"
  security_group_id = "${aws_security_group.ecs_practice.id}"
  to_port           = "${var.security_group_rule["ecs_practice_in_http.to_port"]}"
  type              = "${var.security_group_rule["ecs_practice_in_http.type"]}"
  description       = "${var.security_group_rule["ecs_practice_in_http.description"]}"
  cidr_blocks       = ["${var.security_group_rule["ecs_practice_in_http.cidr_blocks"]}"]
}

resource "aws_security_group_rule" "ecs_practice_in_8080" {
  from_port         = "${var.security_group_rule["ecs_practice_in_8080.from_port"]}"
  protocol          = "${var.security_group_rule["ecs_practice_in_8080.protocol"]}"
  security_group_id = "${aws_security_group.ecs_practice.id}"
  to_port           = "${var.security_group_rule["ecs_practice_in_8080.to_port"]}"
  type              = "${var.security_group_rule["ecs_practice_in_8080.type"]}"
  description       = "${var.security_group_rule["ecs_practice_in_8080.description"]}"
  cidr_blocks       = ["${var.security_group_rule["ecs_practice_in_8080.cidr_blocks"]}"]
}

resource "aws_security_group_rule" "ecs_practice_in_8081" {
  from_port         = "${var.security_group_rule["ecs_practice_in_8081.from_port"]}"
  protocol          = "${var.security_group_rule["ecs_practice_in_8081.protocol"]}"
  security_group_id = "${aws_security_group.ecs_practice.id}"
  to_port           = "${var.security_group_rule["ecs_practice_in_8081.to_port"]}"
  type              = "${var.security_group_rule["ecs_practice_in_8081.type"]}"
  description       = "${var.security_group_rule["ecs_practice_in_8081.description"]}"
  cidr_blocks       = ["${var.security_group_rule["ecs_practice_in_8081.cidr_blocks"]}"]
}

resource "aws_security_group_rule" "ecs_practice_in_8082" {
  from_port         = "${var.security_group_rule["ecs_practice_in_8082.from_port"]}"
  protocol          = "${var.security_group_rule["ecs_practice_in_8082.protocol"]}"
  security_group_id = "${aws_security_group.ecs_practice.id}"
  to_port           = "${var.security_group_rule["ecs_practice_in_8082.to_port"]}"
  type              = "${var.security_group_rule["ecs_practice_in_8082.type"]}"
  description       = "${var.security_group_rule["ecs_practice_in_8082.description"]}"
  cidr_blocks       = ["${var.security_group_rule["ecs_practice_in_8082.cidr_blocks"]}"]
}

resource "aws_security_group_rule" "ecs_practice_out" {
  from_port         = "${var.security_group_rule["ecs_practice_out.from_port"]}"
  protocol          = "${var.security_group_rule["ecs_practice_out.protocol"]}"
  security_group_id = "${aws_security_group.ecs_practice.id}"
  to_port           = "${var.security_group_rule["ecs_practice_out.to_port"]}"
  type              = "${var.security_group_rule["ecs_practice_out.type"]}"
  description       = "${var.security_group_rule["ecs_practice_out.description"]}"
  cidr_blocks       = ["${var.security_group_rule["ecs_practice_out.cidr_blocks"]}"]
}
