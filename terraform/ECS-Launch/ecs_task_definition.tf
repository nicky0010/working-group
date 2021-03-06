resource "aws_ecs_task_definition" "ecs_demo" {
  container_definitions    = "${data.template_file.ecs_demo.rendered}"
  family                   = "ecs-demo-task"
  network_mode             = "awsvpc"
  requires_compatibilities = ["EC2"]
}
