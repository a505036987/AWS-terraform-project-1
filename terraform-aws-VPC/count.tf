resource "aws_instance" "server" {
  count         = local.replications
  ami           = "ami-0b6c402eeb9696a10"
  instance_type = "t2.micro"
  key_name      = "tests"
  subnet_id     = aws_subnet.privatesub-1.id
  tags = {
    Name = "server.${count.index}"
  }
}

