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
variable "web_sg_id" {
    description = "The ID of the web security group to associate with EC2 instances"
    type        = string
  
}
variable "target_group_arn" {
    description = "The ARN of the target group to register EC2 instances"
    type        = string
  
}