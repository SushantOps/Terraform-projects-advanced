variable "client_ip" {
    default = "198.168.2.5/32"
    description = "This is client IP"
  
}

resource "aws_security_group" "allow_tls" {
  name = "alloe tls"
  description = " this is inbound traffic"

  ingress {
    description = "TLS from VPC"
    protocol  = "tcp"
    from_port = 22
    to_port   = 22
    cidr_blocks = [var.client_ip]
  }

  ingress {
    description = "TLS from VPC"
    protocol  = "tcp"
    from_port = 80
    to_port   = 80
    cidr_blocks = [var.client_ip]
  }

  ingress {
    description = "TLS from VPC"
    protocol  = "tcp"
    from_port = 443
    to_port   = 443
    cidr_blocks = [var.client_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "abcd"
  }
}