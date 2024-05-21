variable "instance_name" {
  description = "the name of instance to create."
  type        = string
  default     = "crp-cvm-cdb"
}

variable "availability_zone" {
  description = "The available zone for the instance.  "
  type        = string
  default     = "ap-guangzhou-3"
}

variable "image_id" {
  description = "The image to use for the instance. Changing image_id will cause the instance reset."
  type        = string
  default     = "img-9qrfy1xt"
}

variable "instance_type" {
  description = "instance type of instance."
  default     = "S1.MEDIUM2"
}

variable "system_disk_type" {
  description = "System disk type. For more information on limits of system disk types, see Storage Overview. Valid values: LOCAL_BASIC: local disk, LOCAL_SSD: local SSD disk, CLOUD_SSD: SSD, CLOUD_PREMIUM: Premium Cloud"
  type        = string
  default     = "CLOUD_PREMIUM"
}

variable "system_disk_size" {
  type        = number
  description = "Size of the system disk. unit is GB, Default is 50GB. If modified, the instance may force stop."
  default     = 50
}

variable "hostname" {
  description = "The hostname of the instance. Windows instance: The name should be a combination of 2 to 15 characters comprised of letters (case insensitive), numbers, and hyphens (-). Period (.) is not supported, and the name cannot be a string of pure numbers. Other types (such as Linux) of instances: The name should be a combination of 2 to 60 characters, supporting multiple periods (.). The piece between two periods is composed of letters (case insensitive), numbers, and hyphens (-). Modifying will cause the instance reset."
  type        = string
  default     = "user"
}

variable "project_id" {
  type        = number
  description = "project id."
  default     = 0
}

variable "vpc_id" {
  description = "The ID of a VPC network. If you want to create instances in a VPC network, this parameter must be set or the default vpc will be used."
  type        = string
  default     = null
}

variable "subnet_id" {
  type        = string
  default     = null
  description = "The ID of a VPC subnet. If you want to create instances in a VPC network, this parameter must be set or the default subnet will be used."
}

variable "allocate_public_ip" {
  type        = string
  default     = false
  description = "Associate a public IP address with an instance in a VPC or Classic. Boolean value, Default is false."
}

variable "internet_max_bandwidth_out" {
  type        = number
  default     = 5
	description = "Maximum outgoing bandwidth to the public network, measured in Mbps (Mega bits per second). This value does not need to be set when `allocate_public_ip` is false."
}

variable "password" {
  description = "Login password of the instance. For Linux instances, the password must include 8-30 characters, and contain at least two of the following character sets: [a-z], [A-Z], [0-9] and [()`~!@#$%^&*-+="
  type        = string
  default     = "Password@123"
}

variable "security_group_ids" {
  type        = list(string)
  default     = ["sg-if748odn"]
  description = "A list of orderly security group IDs to associate with."
}

variable "data_disk_type" {
  description = "Data disk type. Valid values: LOCAL_BASIC: local disk, LOCAL_SSD: local SSD disk, LOCAL_NVME: local NVME disk, specified in the InstanceType, LOCAL_PRO: local HDD disk, specified in the InstanceType, CLOUD_BASIC: HDD cloud disk, CLOUD_PREMIUM: Premium Cloud Storage, CLOUD_SSD: SSD, CLOUD_HSSD: Enhanced SSD, CLOUD_TSSD: Tremendous SSD, CLOUD_BSSD: Balanced SSD."
  type        = string
  default     = "CLOUD_PREMIUM"
}

variable "data_disk_size" {
  type        = number
  description = "Size of the data disk, and unit is GB."
  default     = 50
}

variable "delete_with_instance" {
  description = "Decides whether the disk is deleted with instance(only applied to CLOUD_BASIC, CLOUD_SSD and CLOUD_PREMIUM disk with POSTPAID_BY_HOUR instance), default is true."
  type        = bool
  default     = true
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
