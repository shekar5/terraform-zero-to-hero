variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string

}
variable "public_subnets" {
  description = "Map of CIDR blocks for public subnets"
  type = map(object({
    cidr_block = string
    az         = string
  }))

}
variable "ami" {
  description = "The AMI ID for the EC2 instances"
  type        = string

}
variable "instance_type" {
  description = "The instance type for the EC2 instances"
  type        = string

}
variable "instance_count" {
  description = "The number of EC2 instances to launch"
  type        = number

}
variable "subnet_ids" {
  description = "List of subnet IDs where EC2 instances will be launched"
  type        = list(string)

}