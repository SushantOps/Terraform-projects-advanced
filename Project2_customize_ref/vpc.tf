resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "VPC1"
  }

}

resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_security_group" "example_sg" {
  name        = "example-sg"
  description = "Example Security Group"
  vpc_id      = aws_vpc.vpc1.id

  ingress {
    description = "TLS  from vpc"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.vpc1.cidr_block,"${aws_eip.lb.public_ip}/32"]

  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow tls"
  }
}

