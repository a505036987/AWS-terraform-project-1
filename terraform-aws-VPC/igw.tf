# Creating Internet Gateway 
resource "aws_internet_gateway" "asiait-gateway" {
  depends_on = [
    aws_vpc.asiait-vpc,
    aws_subnet.publicsub-1,
    aws_subnet.publicsub-2
  ]

  vpc_id = aws_vpc.asiait-vpc.id
}

