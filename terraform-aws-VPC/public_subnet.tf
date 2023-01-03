# Creating Public Subnet for EC2 instance
resource "aws_subnet" "publicsub-1" {
  depends_on = [
    aws_vpc.asiait-vpc
  ]
  vpc_id                  = aws_vpc.asiait-vpc.id
  cidr_block              = var.asiait-public-a
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "Public Subnet"
  }
}

resource "aws_subnet" "publicsub-2" {
  depends_on = [
    aws_vpc.asiait-vpc
  ]
  vpc_id                  = aws_vpc.asiait-vpc.id
  cidr_block              = var.asiait-public-c
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true
  tags = {
    Name = "Public Subnet"
  }
}