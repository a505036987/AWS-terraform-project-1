# Creating Route Table for Public Subnet
resource "aws_route_table" "rt_public" {
  depends_on = [
    aws_internet_gateway.asiait-gateway
  ]
  vpc_id = aws_vpc.asiait-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.asiait-gateway.id
  }
  tags = {
    Name = "Public Subnet Route Table"
  }
}
resource "aws_route_table_association" "rt_associate_public" {
  subnet_id      = aws_subnet.publicsub-1.id
  route_table_id = aws_route_table.rt_public.id
}


resource "aws_route_table_association" "rt_associate_public-1" {
  subnet_id      = aws_subnet.publicsub-2.id
  route_table_id = aws_route_table.rt_public.id
}