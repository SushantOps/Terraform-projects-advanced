resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat-eip.id
  subnet_id     = aws_subnet.sub-pub.id

  tags = {
    Name = "NAT"
  }
  
}