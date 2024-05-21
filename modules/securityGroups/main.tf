resource "tencentcloud_security_group" "sg" {
 name        = var.name
 description = var.description
}

resource "tencentcloud_security_group_rule_set" "sg_rule" {
  security_group_id = tencentcloud_security_group.sg.id

  ingress {
    action      = var.ingress-action
    cidr_block  = var.ingress-cidr_block
    protocol    = var.ingress-protocol
    port        = var.ingress-port
    description = var.ingress-description
  }

  egress {
    action      = var.egress-action
    cidr_block  = var.egress-cidr_block
    protocol    = var.egress-protocol
    description = var.egress-description
  }
}