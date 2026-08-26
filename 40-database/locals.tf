locals {
  ami_id        = data.aws_ami.joindevops_ami.id
  mongodb_sg_id = data.aws_ssm_parameter.mongodb.value
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    Terraform   = true
  }
  common_name_suffix = "${var.project_name}-${var.environment}"
  subnet_id          = split(",", data.aws_ssm_parameter.database_subnets.value)[0]
}
