# Creating EIP
resource "aws_eip" "eip-1" {
  vpc = true
}

resource "aws_eip" "eip-2" {
  vpc = true
}

