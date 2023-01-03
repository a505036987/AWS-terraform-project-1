resource "aws_ec2_transit_gateway" "asia-it-transite-gateway" {
  description = "asia-it-transite-gateway"
}

resource "aws_ec2_transit_gateway_vpc_attachment" "Public-1" {
  subnet_ids         = [aws_subnet.publicsub-1.id, aws_subnet.publicsub-2.id]
  transit_gateway_id = aws_ec2_transit_gateway.asia-it-transite-gateway.id
  vpc_id             = aws_vpc.asiait-vpc.id
}


resource "aws_ec2_transit_gateway_connect" "attachment" {
  transport_attachment_id = aws_ec2_transit_gateway_vpc_attachment.Public-1.id
  transit_gateway_id      = aws_ec2_transit_gateway.asia-it-transite-gateway.id
}


