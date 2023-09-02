provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "web" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  count = 2

  tags = {
    Name = "Terraform ec2"
  }

}
resource "aws_instance" "web2" {
  count         = length(var.instances)
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t3.micro"

  tags = {
    Name = element(var.instances, count.index)
  }
}
variable "instances" {
  default = ["frontend", "catalogue", "cart"]
}

