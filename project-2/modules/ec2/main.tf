resource "aws_instance" "web" {
    ami           = var.ami
    instance_type = var.instance_type
    count         = var.instance_count
    subnet_id = element(var.subnet_ids, count.index)
    vpc_security_group_ids = [var.web_sg_id]

    tags = {
        Name = "web-instance-${count.index}"
    }
}

resource "aws_lb_target_group_attachment" "this" {
    count            = var.instance_count
    target_group_arn = var.target_group_arn
    target_id        = aws_instance.web[count.index].id
    port             = 80
  
}