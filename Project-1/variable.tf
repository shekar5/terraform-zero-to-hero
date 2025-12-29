variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "subnet_1_cidr" {
  description = "CIDR BLOCK FOR SUBNET-1"
  type        = string
}

variable "subnet_2_cidr" {
  description = "CIDR for subnet-2"
  type        = string

}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed for SSH"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string

}