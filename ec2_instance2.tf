resource "aws_instance" "myec2" {
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
