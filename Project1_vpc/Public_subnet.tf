resource "aws_subnet" "sub-pub" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public-subnet"
  }
}