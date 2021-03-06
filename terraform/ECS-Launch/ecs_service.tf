resource "aws_ecs_service" "ecs_demo" {
  depends_on = [
    "aws_ecs_task_definition.ecs_demo",
    "aws_lb_target_group.ecs_demo",
    "aws_lb.ecs_demo",
  ]

  name            = "ecs-demo-service"
  cluster         = "${aws_ecs_cluster.ecs_demo.id}"
  task_definition = "${aws_ecs_task_definition.ecs_demo.arn}"
  launch_type     = "EC2"
  desired_count   = 2

  network_configuration {
    subnets = [
      "${aws_subnet.my_subnet_public_a.id}",
      "${aws_subnet.my_subnet_public_c.id}",
    ]

    security_groups = [
      "${aws_security_group.ecs_practice.id}",
    ]
  }

  ordered_placement_strategy {
    type  = "spread"
    field = "attribute:ecs.availability-zone"
  }

  load_balancer {
    target_group_arn = "${aws_lb_target_group.ecs_demo.arn}"
    container_name   = "ecs-demo-container"
    container_port   = 80
  }
}
