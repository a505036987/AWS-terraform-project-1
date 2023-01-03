# Creating NAT Gateway
resource "aws_nat_gateway" "asia-it-gw-a" {
  allocation_id = aws_eip.eip-1.id
  subnet_id     = aws_subnet.publicsub-1.id
}

resource "aws_nat_gateway" "asia-it-gw-c" {
  allocation_id = aws_eip.eip-2.id
  subnet_id     = aws_subnet.publicsub-2.id
}