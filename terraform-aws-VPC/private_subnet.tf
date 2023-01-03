# Creating Private subnet 
resource "aws_subnet" "privatesub-1" {
  depends_on = [
    aws_vpc.asiait-vpc
  ]
  vpc_id            = aws_vpc.asiait-vpc.id
  cidr_block        = var.asiait-private-a
  availability_zone = "ap-northeast-1a"
  tags = {
    Name = "Private Subnet"
  }
}

resource "aws_subnet" "privatesub-2" {
  depends_on = [
    aws_vpc.asiait-vpc
  ]
  vpc_id            = aws_vpc.asiait-vpc.id
  cidr_block        = var.asiait-private-c
  availability_zone = "ap-northeast-1c"
  tags = {
    Name = "Private Subnet"
  }
}