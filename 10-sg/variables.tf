variable "sg_name" {
  type = list(string)
  default = ["catalogue", "user",
    "cart", "shipping", "payment",
    "frontend", "mongodb", "redis", "mysql",
    "rabbitmq", "bastion", "frontend-alb",
  "backend-alb"]
}

variable "project_name" {
  type    = string
  default = "roboshop"
}

variable "environment" {
  type    = string
  default = "dev"
}
