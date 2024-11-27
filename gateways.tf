# Cretae Internet Gateway
resource "aws_internet_gateway" "dev_igw" {
    vpc_id = aws_vpc.dev_vpc.id

    depends_on = [aws_vpc.dev_vpc]
    tags = {
        Name = "dev_igw"
    }
}

# Create route table for dev vpc
resource "aws_route_table" "dev_route_table" {
  vpc_id = aws_vpc.dev_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev_igw.id
  }
    depends_on = [aws_vpc.dev_vpc, aws_internet_gateway.dev_igw]

  tags = {
    Name = "dev_igw_route_table"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.dev_pub_subnet.id
  route_table_id = aws_route_table.dev_route_table.id
} 