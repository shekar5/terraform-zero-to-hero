
Create a Highly Available Web Setup with:
VPC
Multi-AZ public subnets
EC2 web servers (scaled using loops)
Security Groups
Same modules reused for env / stage / prod

============

terraform-practice/
│
├── modules/                       👈 CHILD MODULES (Reusable)
│
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── security/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── ec2/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
└── envs/                          👈 ROOT MODULES (Practice here)
    ├── env/
    │   ├── main.tf
    │   ├── provider.tf
    │   └── terraform.tfvars
    │
    ├── stage/
    │   ├── main.tf
    │   ├── provider.tf
    │   └── terraform.tfvars
    │
    └── prod/
        ├── main.tf
        ├── provider.tf
        └── terraform.tfvars
================================================
To configure in Terraform, Need to know below manual process of creating :
VPC :

1. CIDR Block and Enable DNS Hostnames.
2. Subnets --> public  &    private with Avalability Zones and Enable automatic IP Assignment
3. IGW (Internet Hateway) --> Attach IGW to VPC
4. Route Table --> add Route to IGW with CIDR block 0.0.0.0/0
5. associate Routes to public subnets.

Security Group :
1. VPC ID
2. web-sg, alb-sg, db-sg, ssh-sg
3. inbound & outbound rules

EC2 :
1. ami
2.instance type
3.instance count
4.subnet id
5.security group
6. key pair
7.iam role (optional)

ALB :

1. vpc id
2. subnet id
3.ALB SG group id
4. Create ALB Resource --> name , loadbalancer type, subnets, security group
5.aws LB Target Group Resource --> vpc id,port,protocol,health eck,
6. aws_lb_listner resource --> load balancer arn , port, protocol, default action --> type ->forward --> target group arn --> 


