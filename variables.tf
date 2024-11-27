variable "region" {
  type        = string
  default     = "us-east-1"
  description = "for aws region"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
}

variable "pub_subnet_cidr" {
  type        = string
  default     = "10.0.0.0/24"
  description = "For Dev Public Subnet"
}

variable "pri_subnet_cidr" {
  type        = string
  default     = "10.0.1.0/24"
  description = "For Dev Private Subnet"
}

variable "a_zone" {
  type        = string
  default     = "us-east-1a"
}


variable "ami_id" {
  type        = string
  default     = "ami-0b0ea68c435eb488d"
  #description = "description"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "for instance type"
}

variable "name" {
  type        = string
  default     = ""
  description = "description"
}

