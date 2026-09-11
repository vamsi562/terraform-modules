locals {
  ami_id          = data.aws_ami.joindevops_ami.id
  catalogue_sg_id = data.aws_ssm_parameter.catalogue_sg.value
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    Terraform   = true
  }
  common_name_suffix      = "${var.project_name}-${var.environment}"
  subnet_id               = split(",", data.aws_ssm_parameter.private_subnets.value)[0]
  vpc_id                  = data.aws_ssm_parameter.vpc.value
  private_subnets         = split(",", data.aws_ssm_parameter.private_subnets.value)
  backend_lb_listener_arn = data.aws_ssm_parameter.backend_lb_arn.value
}
