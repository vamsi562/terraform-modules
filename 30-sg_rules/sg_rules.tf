resource "aws_security_group_rule" "backend_bastion" {
  type                     = "ingress"
  security_group_id        = local.backend_alb_sg
  source_security_group_id = local.bastion_sg_id
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"

}

resource "aws_security_group_rule" "bastion_sg" {
  type              = "ingress"
  security_group_id = local.bastion_sg_id
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]

}

resource "aws_security_group_rule" "bastion_mongodb" {
  type                     = "ingress"
  security_group_id        = local.mongodb_sg
  source_security_group_id = local.bastion_sg_id
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

}
