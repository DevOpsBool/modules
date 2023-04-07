resource "aws_security_group" "main" {
  name        = "${var.name}"
  description = "controls access to the ALB"
  vpc_id      = var.vpc_id


  dynamic "ingress" {
    for_each = var.allow_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["${var.cidr}"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    env = "${var.env}"
  }
}
