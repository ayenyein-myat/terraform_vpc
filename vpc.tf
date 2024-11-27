resource "aws_vpc" "dev_vpc"{
    cidr_block = var.vpc_cidr

    tags = {
        Name = "dev_vpc"
    }
}

resource "aws_subnet" "dev_pub_subnet"{
    vpc_id = aws_vpc.dev_vpc.id
    cidr_block = var.pub_subnet_cidr
    availability_zone = var.a_zone

    depends_on = [aws_vpc.dev_vpc]

    tags = {
        Name = "dev_pub_subnet"
    }
}

resource "aws_subnet" "dev_pri_subnet" {
    vpc_id = aws_vpc.dev_vpc.id
    cidr_block = var.pri_subnet_cidr
    availability_zone = var.a_zone

    depends_on = [aws_vpc.dev_vpc]

    tags = {
        Name = "dev_private_subnet"
    }
}