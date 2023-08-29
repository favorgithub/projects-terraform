resource "aws_instance" "web" {
  instance_type = "t3.micro"
  ami = "ami-053b0d53c279acc90"

  tags = {
    Name = "Hello World2"

  }
}

provider "aws" {
  region = "us-east-1"
}
