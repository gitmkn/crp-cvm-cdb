# vpc
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
  default     = "cdb_app_vpc"
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet."
  type        = string
  default     = "10.0.0.0/24"
}

variable "subnet_name" {
  description = "The name of the VPC."
  type        = string
  default     = "cdb_app_subnet"
}

variable "availability_zone" {
  description = "The subnet availability zone."
  type        = string
  default     = "ap-guangzhou-2"
}

# 安全组
variable "sg_name" {
  description = "The name of the security group."
  type        = string
  default     = "sg_name"
}

variable "sg_description" {
  description = "The description of the security group."
  type        = string
  default     = "sg_description"
}

# cvm
variable "instance_name" {
  description = "the name of instance to create."
  type        = string
  default     = "crp-cvm"
}

variable "image_id" {
  description = "The image to use for the instance. Changing image_id will cause the instance reset."
  type        = string
  default     = "img-l8og963d"
}

variable "instance_type" {
  description = "instance type of instance."
  type        = string
  default     = "S5.MEDIUM4"
}

variable "password" {
  description = "Login password of the instance. For Linux instances, the password must include 8-30 characters, and contain at least two of the following character sets: [a-z], [A-Z], [0-9] and [()`~!@#$%^&*-+="
  type        = string
  default     = "Password@123"
}

variable "allocate_public_ip" {
  type        = string
	description =  "Associate a public IP address with an instance in a VPC or Classic. Boolean value, Default is false."
}

variable "internet_max_bandwidth_out" {
  type        = number
	description = "Maximum outgoing bandwidth to the public network, measured in Mbps (Mega bits per second). This value does not need to be set when `allocate_public_ip` is false."
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}


# mysql
variable "mysql_instance_name" {
  description = "The name of the mysql instance."
  type        = string
  default     = "crp-mysql"
}

variable "mysql_instance_region" {
  description = "The regioni of the mysql instance."
  type        = string
  default     = "ap-guangzhou"
}

variable "mysql_instance_password" {
  description = "The password of the mysql instance."
  type        = string
  default     = "Password@123"
}