resource "tencentcloud_instance" "instance" {
  timeouts {
    create = "30m"
  }
  instance_name              = var.instance_name
  availability_zone          = var.availability_zone
  image_id                   = var.image_id
  instance_type              = var.instance_type
  system_disk_type           = var.system_disk_type
  system_disk_size           = var.system_disk_size
  hostname                   = var.hostname
  project_id                 = var.project_id
  vpc_id                     = var.vpc_id
  subnet_id                  = var.subnet_id
  instance_charge_type       = "POSTPAID_BY_HOUR"
  allocate_public_ip         = var.allocate_public_ip
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  orderly_security_groups    = var.security_group_ids
  password                   = var.password

  data_disks {
    data_disk_type       = var.data_disk_type
    data_disk_size       = var.data_disk_size
    delete_with_instance = var.delete_with_instance
  }

  tags = var.tags
}

