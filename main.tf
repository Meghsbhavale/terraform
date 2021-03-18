provider "aws" {
        region = "us-east-1"
}


resource "aws_instance" "my-instance" {
        ami = "ami-0be2609ba883822ec"
        instance_type = "t2.micro"
    subnet_id          = "<subnet -id>"
    vpc_security_group_ids = ["<put security group id>"]
        user_data = file("install_docker.sh")
        tags = {
                Name = "Terraform"
                Value = "Test"
        }
}%                           
