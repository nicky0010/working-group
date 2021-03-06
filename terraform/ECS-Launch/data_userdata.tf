# for ECS-demo
data "template_file" "userdata_ecs_demo" {
  template = "${file("./userdata/ecs_host.sh")}"

  vars = {
    cluster_name = "${aws_ecs_cluster.ecs_demo.name}"
  }
}
