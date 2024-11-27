output "vpc_id" {
  value       = aws_vpc.dev_vpc.id
  description = "DEV VPC Name"
#   depends_on  = []
}
output "public_subnet_id" {
  value       = aws_subnet.dev_pub_subnet.id
#   sensitive   = true
  description = "Public Subnet"
}

output "private_subnet_id" {
  value       = aws_subnet.dev_pri_subnet.id
#   sensitive   = true
  description = "Private Subnet"
}

output "public_ec2_ip" {
  value       = aws_instance.terraform_instance.id
  description = "terraform_instance_ip"
  
}


