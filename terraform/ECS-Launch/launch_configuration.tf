resource "aws_launch_configuration" "ecs-demo" {
  name_prefix          = "ecs-demo-launch-config"
  image_id             = "${data.aws_ami.ecs-amzn2.id}"
  instance_type        = "t2.small"
  key_name             = "ecs-demo"
  iam_instance_profile = "${aws_iam_instance_profile.ec2_instance.name}"
  user_data            = "${data.template_file.userdata_ecs_demo.rendered}"
}
