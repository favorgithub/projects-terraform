provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "development_vpc" {
   cidr_block = "10.0.0.0/16"

}

resource "aws_subnet" "dev_subnet" {
   vpc_id = aws_vpc.development_vpc.id
   cidr_block = "10.0.10.0/24"
  availability_zone = "us-east-1a"

}

data "aws_vpc" "existing_vpc" {
  default = true

}

resource "aws_subnet" "dev-subnet-1" {
  vpc_id = data.aws_vpc.existing_vpc.id
  cidr_block = "172.16.0.0/16"
  availability_zone = "us-east-1a"
}

