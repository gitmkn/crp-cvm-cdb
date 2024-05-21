# CRP-CVM-CDB

[![Deploy-To-Tencent-Cloud.png](https://i.postimg.cc/Y9SjcNrP/Deploy-To-Tencent-Cloud.png)](https://console.cloud.tencent.com/crp/template/template-tmplate-cvm-cdb)

Deploy cvm and mysql with one click, and use security groups to set security access policies.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.12 |
| <a name="requirement_tencentcloud"></a> [tencentcloud](#requirement\_tencentcloud) | >=1.81.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tencentcloud"></a> [tencentcloud](#provider\_tencentcloud) | >=1.81.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cvm-instance"></a> [cvm-instance](#module\_cvm-instance) | ./modules/cvm | n/a |
| <a name="module_mysql-instance"></a> [mysql-instance](#module\_mysql-instance) | ./modules/mysql | n/a |
| <a name="module_securityGroup-cvm"></a> [securityGroup-cvm](#module\_securityGroup-cvm) | ./modules/securityGroups | n/a |
| <a name="module_securityGroup-mysql"></a> [securityGroup-mysql](#module\_securityGroup-mysql) | ./modules/securityGroups | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources
| Name                                                                                                                                                    | Type |
|---------------------------------------------------------------------------------------------------------------------------------------------------------|------|
| [tencentcloud_vpc.vpc](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/data-sources/vpc)                        | resource |
| [tencentcloud_subnet.subnet](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/data-sources/subnet)                  | resource |
| [tencentcloud_security_group.sg](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/resources/security_group) | resource |
| [tencentcloud_security_group_rule_set.sg_rule](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/resources/security_group_rule_set) | resource |
| [tencentcloud_instance.instance](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/resources/instance) | resource |
| [tencentcloud_mysql_instance.instance](https://registry.terraform.io/providers/tencentcloudstack/tencentcloud/latest/docs/resources/mysql_instance)             | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocate_public_ip"></a> [allocate\_public\_ip](#input\_allocate\_public\_ip) | Associate a public IP address with an instance in a VPC or Classic. Boolean value, Default is false. | `string` | n/a | yes |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The subnet availability zone. | `string` | `"ap-guangzhou-6"` | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | The image to use for the instance. Changing image\_id will cause the instance reset. | `string` | `"img-l8og963d"` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | the name of instance to create. | `string` | `"crp-cvm"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | instance type of instance. | `string` | `"S5.MEDIUM4"` | no |
| <a name="input_internet_max_bandwidth_out"></a> [internet\_max\_bandwidth\_out](#input\_internet\_max\_bandwidth\_out) | Maximum outgoing bandwidth to the public network, measured in Mbps (Mega bits per second). This value does not need to be set when `allocate_public_ip` is false. | `number` | n/a | yes |
| <a name="input_mysql_instance_name"></a> [mysql\_instance\_name](#input\_mysql\_instance\_name) | The name of the mysql instance. | `string` | `"crp-mysql"` | no |
| <a name="input_mysql_instance_password"></a> [mysql\_instance\_password](#input\_mysql\_instance\_password) | The password of the mysql instance. | `string` | `"Password@123"` | no |
| <a name="input_mysql_instance_region"></a> [mysql\_instance\_region](#input\_mysql\_instance\_region) | The regioni of the mysql instance. | `string` | `"ap-guangzhou"` | no |
| <a name="input_password"></a> [password](#input\_password) | Login password of the instance. For Linux instances, the password must include 8-30 characters, and contain at least two of the following character sets: [a-z], [A-Z], [0-9] and [()`~!@#$%^&*-+=` | `string` | `"Password@123"` | no |
| <a name="input_sg_description"></a> [sg\_description](#input\_sg\_description) | The description of the security group. | `string` | `"sg_description"` | no |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | The name of the security group. | `string` | `"sg_name"` | no |
| <a name="input_subnet_cidr_block"></a> [subnet\_cidr\_block](#input\_subnet\_cidr\_block) | The CIDR block for the subnet. | `string` | `"10.0.0.0/24"` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | The name of the VPC. | `string` | `"cdb_app_subnet"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | The CIDR block for the VPC. | `string` | `"10.0.0.0/16"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The name of the VPC. | `string` | `"cdb_app_vpc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_instance_id"></a> [db\_instance\_id](#output\_db\_instance\_id) | The instance id of mysql. |
| <a name="output_db_intranet_ip"></a> [db\_intranet\_ip](#output\_db\_intranet\_ip) | instance intranet IP. |
| <a name="output_db_intranet_port"></a> [db\_intranet\_port](#output\_db\_intranet\_port) | Public access port. |
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | id of instance. |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | The private ip of instance. |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | The public ip of instance. |
