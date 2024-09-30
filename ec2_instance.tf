resource "aws_instance" "myec2" {
    ami     = "ami-0e86e20dae9224db8"
    instance_type = "t2.micro"

    tags = {
        name = "Hello World"
    }
    
    lifecycle {
      ignore_changes = [ tags ]
    }
    /*Local provisioner run the command given on local machine. In this case it will create file server_public_ip.txt
     on local machine and fetch public ip of the instace created and save in file by Executing: ["/bin/sh" "-c" "echo x.x.x.x >> server_public_ip.txt"]*/
    provisioner "local-exec" {
      command = "echo ${self.public_ip} >> server_public_ip.txt"
    }
}
