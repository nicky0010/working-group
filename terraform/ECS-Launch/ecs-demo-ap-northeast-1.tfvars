# Common Settings
commons = {
  key_name = "ecs-demo"
}

security_group_rule = {
  # SSH Inbound Rule For ECS Practice EC2
  ecs_practice_in_ssh.from_port   = 22
  ecs_practice_in_ssh.protocol    = "tcp"
  ecs_practice_in_ssh.to_port     = 22
  ecs_practice_in_ssh.type        = "ingress"
  ecs_practice_in_ssh.description = "SSH Access"
  ecs_practice_in_ssh.cidr_blocks = "0.0.0.0/0"

  # HTTP Inbound Rule For Ecs Practice EC2
  ecs_practice_in_http.from_port   = 80
  ecs_practice_in_http.protocol    = "tcp"
  ecs_practice_in_http.to_port     = 80
  ecs_practice_in_http.type        = "ingress"
  ecs_practice_in_http.description = "HTTP Access"
  ecs_practice_in_http.cidr_blocks = "0.0.0.0/0"

  # 8080 Inbound Rule For Ecs Practice EC2
  ecs_practice_in_8080.from_port   = 8080
  ecs_practice_in_8080.protocol    = "tcp"
  ecs_practice_in_8080.to_port     = 8080
  ecs_practice_in_8080.type        = "ingress"
  ecs_practice_in_8080.description = "8080 Access"
  ecs_practice_in_8080.cidr_blocks = "0.0.0.0/0"

  # 8081 Inbound Rule For Ecs Practice EC2
  ecs_practice_in_8081.from_port   = 8081
  ecs_practice_in_8081.protocol    = "tcp"
  ecs_practice_in_8081.to_port     = 8081
  ecs_practice_in_8081.type        = "ingress"
  ecs_practice_in_8081.description = "8081 Access"
  ecs_practice_in_8081.cidr_blocks = "0.0.0.0/0"

  # 8082 Inbound Rule For Ecs Practice EC2
  ecs_practice_in_8082.from_port   = 8082
  ecs_practice_in_8082.protocol    = "tcp"
  ecs_practice_in_8082.to_port     = 8082
  ecs_practice_in_8082.type        = "ingress"
  ecs_practice_in_8082.description = "8082 Access"
  ecs_practice_in_8082.cidr_blocks = "0.0.0.0/0"

  # Outbound Rule For Ecs Practice EC2
  ecs_practice_out.from_port   = 0
  ecs_practice_out.protocol    = -1
  ecs_practice_out.to_port     = 0
  ecs_practice_out.type        = "egress"
  ecs_practice_out.description = "Outbound Access Anywhere"
  ecs_practice_out.cidr_blocks = "0.0.0.0/0"
}
