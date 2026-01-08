module "network" {
    source = "../../modules/network"    
    vpc_cidr = var.vpc_cidr
    public_subnets = var.public_subnets
}

module "security" {
    source = "../../modules/security"
    vpc_id = module.network.vpc_id  
}
module "ec2" {
    source = "../../modules/ec2"
    subnet_ids = module.network.public_subnets_ids
    web_sg_id = module.security.web_sg_id
    ami = var.ami
    instance_type = var.instance_type
    instance_count = var.instance_count
  
}