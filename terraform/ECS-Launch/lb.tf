resource "aws_lb" "ecs_demo" {
  load_balancer_type = "application"
  ip_address_type    = "ipv4"
  name               = "ecs-demo-lb"

  subnets = [
    "${aws_subnet.my_subnet_public_c.id}",
    "${aws_subnet.my_subnet_public_a.id}",
  ]

  security_groups = ["${aws_security_group.ecs_practice.id}"]
}
