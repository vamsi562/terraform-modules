# data "aws_ssm_parameter" "bastion_sg" {
#   name = "/${var.project_name}/${var.environment}/bastion_sg_id"
# }

data "aws_ssm_parameter" "frontend_alb_sg" {
  name = "/${var.project_name}/${var.environment}/frontend-alb_sg_id"
}

data "aws_ssm_parameter" "public_subnets" {
  name = "/${var.project_name}/${var.environment}/public_subnet_ids"
}

data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project_name}/${var.environment}/vpc_id"
}

data "aws_ssm_parameter" "frontend_alb_acm_arn" {
  name = "/${var.project_name}/${var.environment}/frontend_alb_acm_arn"
}

data "aws_route53_zone" "chikoo" {
  name         = "chikoo.fun"
  private_zone = false # Set to true if looking up a private hosted zone
}
