provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ec2First" {
    ami = "<Enter ami id here>"
    instance_type = "<enter instance type required here>"
    subnet_id          = "<Enter subnet id here>"
    vpc_security_group_ids = ["<Entere security group id here>"]
    tags               =  { 
  
         Name = "TerrEc2"
                        }
    
}%           
