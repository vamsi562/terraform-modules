# data "aws_ssm_parameter" "bastion_sg" {
#   name = "/${var.project_name}/${var.environment}/bastion_sg_id"
# }

data "aws_ssm_parameter" "backend_alb_sg" {
  name = "/${var.project_name}/${var.environment}/backend-alb_sg_id"
}

data "aws_ssm_parameter" "private_subnets" {
  name = "/${var.project_name}/${var.environment}/private_subnet_ids"
}

data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project_name}/${var.environment}/vpc_id"
}
