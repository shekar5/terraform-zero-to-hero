vpc_cidr = "10.20.0.0/16"

public_subnets = {
    az1 = {cidr_block = "10.20.1.0/24", az = "us-east-1a"}
    az2 = {cidr_block = "10.20.2.0/24", az = "us-east-1b"}
}
ami = ""
instance_type = "t3.micro"
instance_count = 2  