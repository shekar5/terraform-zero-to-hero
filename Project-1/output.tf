output "web1_public_ip" {
  description = "public up of webserver -1 to validate application"
  value       = aws_instance.webserver-1.public_ip
}

output "web2_public_ip" {
  description = "webserver-2 public ip to valdiate the application"
  value       = aws_instance.webserver-2.public_ip

}
output "loadbalancerdns" {
  value = aws_lb.myalb.dns_name
}