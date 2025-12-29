terraform Structure :
├── provider.tf
├── variables.tf
├── terraform.tfvars
│
├── vpc.tf
├── internet-gateway.tf
├── route-table.tf
├── security-group.tf
├── ec2.tf
├── alb.tf
├── outputs.tf

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
