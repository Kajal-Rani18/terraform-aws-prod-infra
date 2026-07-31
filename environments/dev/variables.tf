variable "vpc_cidr" {
  type = string
}
variable "vpc_name" {
  type = string
}
variable "tags" {
  type = map(string)
}


variable "subnet_cidr" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "subnet_name" {
  type = string
}
variable "igw_name" {
  type = string
}

variable "route_table_name" {
  type = string
}

variable "sg_name" {
  type = string
}
variable "description" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "key_name" {
  type = string
}