variable "vpc_id" {
    description = "The ID of the VPC where resources will be created."
    type        = string    
  
}
variable "subnet_id" {
    description = "The ID of the subnet where resources will be created."
    type        = list(string)
}
variable "alb_sg_id" {
    description = "The ID of the ALB security group to associate with the ALB"
    type        = string
  
}