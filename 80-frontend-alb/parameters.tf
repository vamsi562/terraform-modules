resource "aws_ssm_parameter" "frontend_alb_arn" {
  name  = "/${var.project_name}/${var.environment}/frontend_lb_listener_arn"
  type  = "String"
  value = aws_lb_listener.frontend_alb.arn
}
