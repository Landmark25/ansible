variable "instance_type" {
  description = "Enter the instance type"
  type = string
  default = "t2.micro"
}

variable "instance_name1" {
  description = "Name of Ubuntu-Ansible"
  default = "My_Ubuntu_Ansible"
  type = string
}

variable "instance_name2" {
  description = "value"
  default = "My_AmLinux_Ansible"
  type = string
}

variable "instance_name3" {
  description = "value"
  default = "My_RHEL_Ansible"
  type = string
}

variable "key_name" {
  description = "Enter the Key Name"
  type = string
  default = "milua25"
}

variable "aws_region" {
  description = "Enter the AWS Region"
  type = string
  default = "us-east-2"
}