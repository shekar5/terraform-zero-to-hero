resource "aws_security_group" "alb_sg" {
    name        = "my-security-group"
    description = "Security group for my application"
    vpc_id      = var.vpc_id

    tags = {
        Name = "my-security-group"
    }

    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
resource "aws_security_group" "web_sg" {
    name        = "web-security-group"
    description = "Security group for web servers"
    vpc_id      = var.vpc_id

    tags = {
        Name = "web-security-group"
    }

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        security_groups = [aws_security_group.alb_sg.id]
    }
  
}