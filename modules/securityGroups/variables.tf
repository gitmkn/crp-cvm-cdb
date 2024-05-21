variable "name" {
  description = "The name of the security group."
  type        = string
  default     = "security_group_name"
}

variable "description" {
  description = "The description of the security group."
  type        = string
  default     = "security_group_description"
}

# 安全组规则
variable "ingress-action" {
  description = "Rule policy of security group. Valid values: `ACCEPT` and `DROP`."
  type        = string
  default     = "DROP"
}

variable "ingress-cidr_block" {
  description = " An IP address network or CIDR segment. NOTE: cidr_block, ipv6_cidr_block, source_security_id and address_template_* are exclusive and cannot be set in the same time."
  type        = string
  default     = "0.0.0.0/0"
}

variable "ingress-protocol" {
  description = "Type of IP protocol. Valid values: TCP, UDP and ICMP. Default to all types protocol, and conflicts with service_template_*."
  type        = string
  default     = "ALL"
}

variable "ingress-port" {
  description = "Range of the port. The available value can be one, multiple or one segment. E.g. 80, 80,90 and 80-90. Default to all ports, and conflicts with service_template_*."
  type        = string
  default     = "ALL"
}

variable "ingress-description" {
  description = "Description of the security group rule."
  type        = string
  default     = "cvm and cdb access ingress rules"
}

variable "egress-action" {
  description = "Rule policy of security group. Valid values: `ACCEPT` and `DROP`."
  type        = string
  default     = "DROP"
}

variable "egress-cidr_block" {
  description = " An IP address network or CIDR segment. NOTE: cidr_block, ipv6_cidr_block, source_security_id and address_template_* are exclusive and cannot be set in the same time."
  type        = string
  default     = "0.0.0.0/0"
}

variable "egress-protocol" {
  description = "Type of IP protocol. Valid values: TCP, UDP and ICMP. Default to all types protocol, and conflicts with service_template_*."
  type        = string
  default     = "ALL"
}

variable "egress-port" {
  description = "Range of the port. The available value can be one, multiple or one segment. E.g. 80, 80,90 and 80-90. Default to all ports, and conflicts with service_template_*."
  type        = string
  default     = "ALL"
}

variable "egress-description" {
  description = "Description of the security group rule."
  type        = string
  default     = "cvm and cdb access egress rules"
}