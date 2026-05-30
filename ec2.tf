provider "aws" {
  region = "eu-north-1"
  
}
resource "aws_instance" "my-instance" {
  ami ="ami-00263659a97a6c29c"
  instance_type = "t3.micro"
  key_name = "key-rsa"
  vpc_security_group_ids = [security-group]
    tags = {
    Name = "my-instance"
    name = "instance"
    environment = "DevOps"
    }
}
