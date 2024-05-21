provider "tencentcloud" {
  region = "ap-guangzhou"
}

module "vpc" {
  source = "./modules/vpc"

  vpc_name          = var.vpc_name
  vpc_cidr_block    = var.vpc_cidr_block
  subnet_cidr_block = var.subnet_cidr_block
  subnet_name       = var.subnet_name
  availability_zone = var.availability_zone
}

module "securityGroup-cvm" {
  source = "./modules/securityGroups"

  name        = var.sg_description
  description = var.sg_description

  # ingress-action = "ACCEPT"
  # egress-action = "ACCEPT"
}

module "cvm-instance" {
  source     = "./modules/cvm"
  depends_on = [module.vpc, module.securityGroup-cvm]

  instance_name      = var.instance_name
  availability_zone  = var.availability_zone
  image_id           = var.image_id
  instance_type      = var.instance_type
  vpc_id             = module.vpc.vpc_id
  subnet_id          = module.vpc.subnet_id
  allocate_public_ip = var.allocate_public_ip
  password           = var.password
  security_group_ids = [module.securityGroup-cvm.security_group_id]
  tags               = var.tags
}


module "securityGroup-mysql" {
  source = "./modules/securityGroups"

  name        = var.sg_description
  description = var.sg_description

  ingress-action = "ACCEPT"
  ingress-port   = "3306"
  ingress-cidr_block   = module.cvm-instance.private_ip
  ingress-protocol  = "TCP"

  egress-action = "ACCEPT"
  egress-port   = "3306"
  egress-cidr_block   = module.cvm-instance.private_ip
  egress-protocol  = "TCP"
}

module "mysql-instance" {
  source     = "./modules/mysql"
  depends_on = [module.vpc, module.securityGroup-mysql]

  create_mysql_instance = true
  instance_name         = var.mysql_instance_name
  root_password         = var.mysql_instance_password
  security_groups       = [module.securityGroup-mysql.security_group_id]
  vpc_id                = module.vpc.vpc_id
  subnet_id             = module.vpc.subnet_id
}