# Creating EC2 instance in Private Subnet
locals {
  replications = 2
}

resource "aws_instance" "demoinstance1" {
  count                  = local.replications
  ami                    = "ami-0b6c402eeb9696a10"
  instance_type          = "t2.micro"
  key_name               = "tests"
  vpc_security_group_ids = [aws_security_group.demosg.id]
  subnet_id              = aws_subnet.privatesub-1.id
  tags = {
    Name = "My Private Instance_${count.index}"
  }
}
resource "aws_instance" "demoinstance2" {
  ami                    = "ami-0b6c402eeb9696a10"
  instance_type          = "t2.micro"
  key_name               = "tests"
  vpc_security_group_ids = [aws_security_group.demosg.id]
  subnet_id              = aws_subnet.privatesub-2.id
  tags = {
    Name = "My Private Instance-asia-it"
  }
}


