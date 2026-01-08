output "vpc_id" {
    description = "The ID of the VPC"
    value       = aws_vpc.this.id
  
}
output "public_subnets_ids" {
    description = "The IDs of the public subnets"
    value       = { for key, subnet in aws_subnet.public : key => subnet.id }
  
}
output "private_subnets_ids" {
    description = "The IDs of the private subnets"
    value       = { for key, subnet in aws_subnet.private : key => subnet.id }
  
}