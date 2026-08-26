data "aws_ssm_parameter" "bastion_sg" {
  name = "/${var.project_name}/${var.environment}/bastion_sg_id"
}

data "aws_ssm_parameter" "backend_alb_sg" {
  name = "/${var.project_name}/${var.environment}/backend-alb_sg_id"
}

data "aws_ssm_parameter" "public_subnets" {
  name = "/${var.project_name}/${var.environment}/public_subnet_ids"
}


data "aws_ssm_parameter" "mongodb_sg" {
  name = "/${var.project_name}/${var.environment}/mongodb_sg_id"
}


data "aws_ssm_parameter" "redis_sg" {
  name = "/${var.project_name}/${var.environment}/redis_sg_id"
}

data "aws_ssm_parameter" "rabbitmq_sg" {
  name = "/${var.project_name}/${var.environment}/rabbitmq_sg_id"
}

data "aws_ssm_parameter" "mysql_sg" {
  name = "/${var.project_name}/${var.environment}/mysql_sg_id"
}
