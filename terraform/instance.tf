# For ECS Prepare
resource "aws_instance" "ecs_prepare" {
  count = "${var.commons["is_exe"]}"
  ami = "${data.aws_ami.amazon2.id}"
  instance_type = "${var.ec2["ecs_prepare.instance_type"]}"
  subnet_id = "${aws_subnet.my_subnet_public_a.id}"
  iam_instance_profile = "${aws_iam_instance_profile.ec2_ecs_practice.name}"
  key_name = "${var.commons["key_name"]}"

  vpc_security_group_ids = [
  "${aws_security_group.ecs_practice.id}"
  ]
}
