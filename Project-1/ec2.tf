resource "aws_instance" "webserver-1" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.sub-1.id
  associate_public_ip_address = true
  user_data                   = base64encode(file("userdata.sh"))

  tags = {
    Name = "webserver-1"
  }
}

resource "aws_instance" "webserver-2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  vpc_security_group_ids      = [aws_security_group.web-sg.id]
  subnet_id                   = aws_subnet.sub-2.id
  associate_public_ip_address = true
  user_data                   = base64encode(file("userdata1.sh"))

}