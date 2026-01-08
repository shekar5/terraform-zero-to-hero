resource "aws_vpc" "this" {
    cidr_block = var.vpc_cidr

    tags = {
        Name = "my-vpc"
    }


}
resource "aws_subnet" "public" {
    for_each = var.public_subnets

    vpc_id            = aws_vpc.this.id
    cidr_block        = each.value.cidr_block
    availability_zone = each.value.az
    map_public_ip_on_launch = true


    tags = {
        Name = "public-subnet-${each.key}"
    }
  
}
resource "aws_subnet" "private" {
    for_each = var.private_subnets

    vpc_id            = aws_vpc.this.id
    cidr_block        = each.value.cidr_block
    availability_zone = each.value.az

    tags = {
        Name = "private-subnet-${each.key}"
    }
  
}
resource "aws_internet_gateway" "this" {
    vpc_id = aws_vpc.this.id

    tags = {
        Name = "my-internet-gateway"
    }
}
resource "aws_route_table" "public" {
    vpc_id = aws_vpc.this.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.this.id
}
}
resource "aws_route_table_association" "public" {
    for_each = aws_subnet.public
    subnet_id      = each.value.id
    route_table_id = aws_route_table.public.id
}       