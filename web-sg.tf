resource "aws_security_group" "web_server_sg" {
  name        = "web-sg"
  description = "security group for the web server"

  dynamic "ingress" {
    for_each = ["80", "22", "443"]
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}