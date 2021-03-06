resource "aws_lb_target_group" "ecs_demo" {
  name        = "ecs-demo-target-group"
  protocol    = "HTTP"
  port        = "80"
  target_type = "ip"
  vpc_id      = "${aws_vpc.ecs_practice.id}"
}
