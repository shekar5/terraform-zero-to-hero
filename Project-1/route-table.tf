resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-route-table"
  }
}

resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.sub-1.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "rta2" {
  subnet_id      = aws_subnet.sub-2.id
  route_table_id = aws_route_table.public_rt.id
}