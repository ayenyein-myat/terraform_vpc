resource "aws_security_group" "dev_web_sg" {
  name        = "dev_web_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.dev_vpc.id}"

  ingress {
    description = "allow http"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "allow https"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "all"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "dev_web_sg"
  }
}