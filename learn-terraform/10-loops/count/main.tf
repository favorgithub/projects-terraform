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

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name = var.user_names[count.index]


}

variable "user_names" {
  description = "IAM usernames"
  type = list(string)
  default = ["user1", "user2", "user3"]

}