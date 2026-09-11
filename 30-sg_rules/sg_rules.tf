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

resource "aws_security_group_rule" "bastion_redis" {
  type                     = "ingress"
  security_group_id        = local.redis_sg
  source_security_group_id = local.bastion_sg_id
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

}

resource "aws_security_group_rule" "bastion_rabbitmq" {
  type                     = "ingress"
  security_group_id        = local.rabbitmq_sg
  source_security_group_id = local.bastion_sg_id
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

}

resource "aws_security_group_rule" "bastion_mysql" {
  type                     = "ingress"
  security_group_id        = local.mysql_sg
  source_security_group_id = local.bastion_sg_id
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

}

resource "aws_security_group_rule" "bastion_catalogue" {
  type                     = "ingress"
  security_group_id        = local.catalogue_sg
  source_security_group_id = local.bastion_sg_id
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"

}

resource "aws_security_group_rule" "mongodb_catalogue" {
  type                     = "ingress"
  security_group_id        = local.mongodb_sg
  source_security_group_id = local.catalogue_sg
  from_port                = 27017
  to_port                  = 27017
  protocol                 = "tcp"

}

resource "aws_security_group_rule" "backend_alb_catalogue" {
  type                     = "ingress"
  security_group_id        = local.catalogue_sg
  source_security_group_id = local.backend_alb_sg
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"

}
