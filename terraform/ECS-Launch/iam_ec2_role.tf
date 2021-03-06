resource "aws_iam_role" "ec2_instance" {
  name               = "ecs-instance-ecs-demo-role"
  assume_role_policy = "${data.aws_iam_policy_document.ec2_role.json}"
}

resource "aws_iam_instance_profile" "ec2_instance" {
  name = "${aws_iam_role.ec2_instance.name}"
  role = "${aws_iam_role.ec2_instance.name}"
}

resource "aws_iam_role_policy_attachment" "ecs_for_ec2" {
  role       = "${aws_iam_role.ec2_instance.name}"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
}
