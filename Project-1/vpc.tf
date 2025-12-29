resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true

  tags = {
    Name = "Learning_vpc"

  }
}

resource "aws_subnet" "sub-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_1_cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "subnet-1"
  }

}

resource "aws_subnet" "sub-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_2_cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "subnet-2"
  }

}