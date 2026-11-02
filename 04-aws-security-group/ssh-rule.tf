resource "aws_vpc_security_group_ingress_rule" "ssh_from_home" {
  security_group_id = aws_security_group.learning.id

  cidr_ipv4   = var.admin_ipv4_cidr
  from_port   = 22
  to_port     = 22
  ip_protocol = "tcp"

  description = "SSH access from my home IP"
}
