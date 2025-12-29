# Terraform AWS Web Architecture : this Project is simple with no modules, loops..To understand basic.

This project creates a highly available web application using:
- VPC with multi-AZ public subnets
- EC2 web servers
- Application Load Balancer
- Secure security group configuration

The infrastructure is provisioned using Terraform following best practices.


Terraform Structure :

│
├── provider.tf
│   # Configure AWS provider and region
│
├── variables.tf
│   # Declare all input variables used across the project
│   # (VPC CIDR, subnet CIDRs, AMI ID, instance type, SSH CIDR, etc.)
│
├── terraform.tfvars
│   # Assign actual values to variables
│   # Environment-specific configuration (dev / learning)
│
├── vpc.tf
│   # Create the VPC and public subnets in multiple Availability Zones
│   # Enable DNS support and DNS hostnames
│
├── internet-gateway.tf
│   # Create and attach Internet Gateway to the VPC
│   # Required for public internet access
│
├── route-table.tf
│   # Create route table and default route (0.0.0.0/0 → IGW)
│   # Associate route table with public subnets
│
├── security-group.tf
│   # Define security groups
│   # - ALB security group: allow HTTP from internet
│   # - EC2 security group: allow HTTP only from ALB, SSH from admin IP
│
├── ec2.tf
│   # Create EC2 web servers (web1 and web2)
│   # Deploy Apache using user-data
│   # Place instances in different subnets (multi-AZ)
│
├── alb.tf
│   # Create Application Load Balancer (ALB)
│   # Create target group and register EC2 instances
│   # Configure HTTP listener to forward traffic
│
├── outputs.tf
│   # Output important information
│   # - ALB DNS name for application validation


Final Architecture :

Internet 
   |
   |  HTTP (80)
   |
[ Application Load Balancer ]
        |
        |
   -----------------
   |               |
[ EC2 Web1 ]   [ EC2 Web2 ]
  Subnet-1        Subnet-2
  AZ-1a           AZ-1b


