data "template_file" "ecs_demo" {
  template = "${file("task-definitions/ecs_demo.json")}"

  vars = {
    container_name = "ecs-demo-container"
    image          = "694568596848.dkr.ecr.ap-northeast-1.amazonaws.com/ecs-demo"
    cpu            = 1
    memory         = 128
    container_port = 80
    host_port      = 80
  }
}
