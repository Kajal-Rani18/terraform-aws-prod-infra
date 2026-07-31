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