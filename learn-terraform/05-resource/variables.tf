variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     =  "myEC2Key"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     =  "t2.micro"
}

variable "security_group" {
  description = "Name of security group"
  default     = "my-jenkins-security-group-2025"
}

variable "tag_name" {
  description = "Tag Name of Ec2 instance"
  default     = "my-ec2-instance"
}
variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-053b0d53c279acc90"
}