resource "aws_lb_listener" "ecs_demo" {
  load_balancer_arn = "${aws_lb.ecs_demo.arn}"
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.ecs_demo.arn}"
  }
}
