variable "region" {
  default = "ap-southeast-2"
  description = "Amazon Region"
}
variable "resource_prefix" {
  default = "test"
  description = "resource name prefix"
  type = string
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "vpc CIDR Range"
}

// Bastion
variable "bastion_instance_type" {
  default = "t2.micro"
  description = "EC2 Bastion Instance Type"
}

variable "bastion_ami" {
  description = "EC2 Bastion Instance Ami Id"
  type = string
  default = ""
}

variable "bastion_key_pair_name" {
  default = "devos-demo-sydney-instance-key"
  description = "Bastion Instance Key Pair Name"
}