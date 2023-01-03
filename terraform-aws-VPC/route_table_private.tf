# Creating Route table for Private Subnet
resource "aws_route_table" "rt_private" {
  vpc_id = aws_vpc.asiait-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.asia-it-gw-a.id

  }
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.asia-it-gw-c.id

  }
  tags = {
    Name = "Route Table for the Private Subnet"
  }
}
resource "aws_route_table_association" "rt_associate_private_2" {
  subnet_id      = aws_subnet.privatesub-1.id
  route_table_id = aws_route_table.rt_private.id
}


resource "aws_route_table_association" "rt_associate_private_3" {
  subnet_id      = aws_subnet.privatesub-2.id
  route_table_id = aws_route_table.rt_private.id
}