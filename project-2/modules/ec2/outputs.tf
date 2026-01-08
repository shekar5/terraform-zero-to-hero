output "instance_ids" {
    description = "The IDs of the EC2 instances"
    value       = { for key, instance in aws_instance.web : key => instance.id }
}
output "public_ips" {
    description = "The public IPs of the EC2 instances"
    value       = { for key, instance in aws_instance.web : key => instance.public_ip }
  
}