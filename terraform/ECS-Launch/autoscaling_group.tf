resource "aws_autoscaling_group" "ecs_demo" {
  name                 = "ecs-demo-autoscaling-group"
  max_size             = 4
  min_size             = 2
  desired_capacity     = 2
  launch_configuration = "${aws_launch_configuration.ecs-demo.name}"

  vpc_zone_identifier = [
    "${aws_subnet.my_subnet_public_a.id}",
    "${aws_subnet.my_subnet_public_c.id}",
  ]
}
