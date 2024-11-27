resource "aws_network_acl" "dev_pub_nacl" {
  vpc_id = aws_vpc.dev_vpc.id

  egress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

    depends_on = [
        aws_vpc.dev_vpc,
        aws_subnet.dev_pub_subnet, 
    ]
  tags = {
    Name = "dev_pub_nacl"
  }
}

# resource "aws_network_acl" "dev_pri_nacl" {
#   vpc_id = aws_vpc.dev_vpc.id

#   egress {
#     protocol   = "tcp"
#     rule_no    = 100
#     action     = "allow"
#     cidr_block = "0.0.0.0/0"
#     from_port  = 0
#     to_port    = 0
#   }

#   ingress {
#     protocol   = "tcp"
#     rule_no    = 100
#     action     = "allow"
#     cidr_block = "0.0.0.0/0"
#     from_port  = 0
#     to_port    = 0
#   }

#     depends_on = [
#         aws_vpc.dev_vpc,
#         aws_subnet.dev_pri_subnet, 
#     ]
#   tags = {
#     Name = "dev_pub_nacl"
#   }
# }