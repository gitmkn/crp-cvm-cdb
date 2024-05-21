output "instance_id" {
  description = "id of instance."
  value       = module.cvm-instance.instance_id
}

output "public_ip" {
  description = "The public ip of instance."
  value       = module.cvm-instance.public_ip
}

output "private_ip" {
  description = "The private ip of instance."
  value       = module.cvm-instance.private_ip
}

output "db_instance_id" {
  description = "The instance id of mysql."
  value       = module.mysql-instance.db_instance_id
}

output "db_intranet_port" {
  description = "Public access port."
  value       = module.mysql-instance.intranet_port
}

output "db_intranet_ip" {
  description = "instance intranet IP."
  value       = module.mysql-instance.intranet_ip
}