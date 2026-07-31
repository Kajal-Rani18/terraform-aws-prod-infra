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
  tags      = var.tags
}