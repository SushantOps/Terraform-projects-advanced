resource "aws_instance" "web" {
  ami           = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"

  tags = {
    Name = "My_Instance"
  }
}

output "ec2-public-ip" {
  value = aws_instance.web.public_ip


}