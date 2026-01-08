resource "aws_lb" "this" {
    name               = "web-alb"
    internal           = false
    load_balancer_type = "application"
    security_groups    = [var.alb_sg_id]
    subnets            = var.subnet_ids

    tags = {
        Name = "web-alb"
    }
  
}
resource "aws_lb_target_group" "this" {
    name     = "web-target-group"
    port     = 80
    protocol = "HTTP"
    vpc_id   = var.vpc_id
    subnet_id = element(var.subnet_ids, 0)

    tags = {
        Name = "web-target-group"
    }
}
resource "aws_lb_listener" "this" {
    load_balancer_arn = aws_lb.this.arn
    port              = "80"
    protocol          = "HTTP"
    default_action {
        type             = "forward"
        target_group_arn = aws_lb_target_group.this.arn
    }
}