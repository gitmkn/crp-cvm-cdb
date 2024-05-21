resource "tencentcloud_mysql_instance" "instance" {
  count = var.create_mysql_instance ? 1 : 0

  instance_name     = var.instance_name
  mem_size          = var.mem_size
  volume_size       = var.volume_size
  availability_zone = var.availability_zone
  cpu               = var.cpu
  engine_version    = var.engine_version
  device_type       = var.device_type
  project_id        = var.project_id
  root_password     = var.root_password
  security_groups   = var.security_groups
  parameters        = var.parameters
  tags              = var.tags

  # payment configuration

  charge_type     = var.charge_type
  prepaid_period  = var.prepaid_period
  auto_renew_flag = var.auto_renew_flag
  force_delete    = var.force_delete

  # network configuration

  internet_service = var.internet_service
  intranet_port    = var.intranet_port
  subnet_id        = var.subnet_id
  vpc_id           = var.vpc_id

  # slave configuration

  first_slave_zone  = var.first_slave_zone
  second_slave_zone = var.second_slave_zone
  slave_deploy_mode = var.slave_deploy_mode
  slave_sync_mode   = var.slave_sync_mode
}