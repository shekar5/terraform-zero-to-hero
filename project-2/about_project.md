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



=============
