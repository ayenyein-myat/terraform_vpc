resource "aws_instance" "terraform_instance" {
    ami = var.ami_id
    instance_type     = var.instance_type
    # availability_zone = var.region
    subnet_id = aws_subnet.dev_pub_subnet.id
    associate_public_ip_address = true

    vpc_security_group_ids = [aws_security_group.dev_web_sg.id]

    depends_on = [
        aws_subnet.dev_pub_subnet,
        aws_security_group.dev_web_sg
    ]

    tags = {
        Name = "terraform_instance"
    }

}


