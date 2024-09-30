resource "aws_instance" "myec2_para" {
    region    = var.region
    ami     = var.ami
    instance_type = var.instance 
    tags = {
        name = "Hello World"
    }
    lifecycle {
      ignore_changes = [ tags ]
    }
}
variable "ami"{}
variable "instance"{}
