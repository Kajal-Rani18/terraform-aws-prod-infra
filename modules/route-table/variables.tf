variable "vpc_id" {
  type = string
}

variable "igw_id" {
  type = string
}

variable "route_table_name" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}