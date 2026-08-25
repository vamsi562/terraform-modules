locals {

  bastion_sg_id = data.aws_ssm_parameter.bastion_sg.value
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    Terraform   = true
  }
  common_name_suffix = "${var.project_name}-${var.environment}"
  backend_alb_sg     = data.aws_ssm_parameter.backend_alb_sg.value
}
