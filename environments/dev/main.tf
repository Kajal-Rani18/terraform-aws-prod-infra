module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  tags     = var.tags
}
module "subnet" {
  source = "../../modules/subnet"

  vpc_id            = module.vpc.vpc_id
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
  subnet_name       = var.subnet_name
  tags              = var.tags
}

module "internet_gateway" {
  source = "../../modules/internet-gateway"

  vpc_id   = module.vpc.vpc_id
  igw_name = var.igw_name
  tags     = var.tags
}

module "route_table" {
  source = "../../modules/route-table"

  vpc_id           = module.vpc.vpc_id
  igw_id           = module.internet_gateway.igw_id
  route_table_name = var.route_table_name
  tags             = var.tags
}

module "route_table_association" {
  source = "../../modules/route-table-association"

  subnet_id      = module.subnet.subnet_id
  route_table_id = module.route_table.route_table_id
}

module "security_group" {

  source = "../../modules/security-group"

  sg_name = var.sg_name

  description = var.description

  vpc_id = module.vpc.vpc_id

}

module "ec2" {

  source = "../../modules/ec2"

  ami_id = var.ami_id

  instance_type = var.instance_type

  subnet_id = module.subnet.subnet_id

  security_group_ids = [
    module.security_group.security_group_id
  ]

  key_name = var.key_name

  instance_name = var.instance_name

}