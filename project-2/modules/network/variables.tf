variable "vpc_cidr" {
    description = "The CIDR block for VPC"
    type        = string
}
variable "public_subnets" {
    description = "List of CIDR blocks for public subnets"
    type        = map(object({
        cidr_block = string
        az         = string
    }))
}
variable "private_subnets" {
    description = "List of CIDR blocks for private subnets"
    type        = map(object({
        cidr_block = string
        az         = string
    }))
}