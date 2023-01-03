# Creating EC2 instance in Public Subnet
resource "aws_instance" "demoinstance" {
  ami                         = "ami-0b6c402eeb9696a10"
  instance_type               = "t2.micro"
  key_name                    = "tests"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = aws_subnet.publicsub-1.id
  associate_public_ip_address = true
  tags = {
    Name = "My Public Instance"
  }
}

resource "aws_instance" "demoinstance4" {
  ami                         = "ami-0b6c402eeb9696a10"
  instance_type               = "t2.micro"
  key_name                    = "tests"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = aws_subnet.publicsub-2.id
  associate_public_ip_address = true
  tags = {
    Name = "My Public Instance"
  }
}
