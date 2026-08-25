variable "sg_name" {
  type = list(string)
  default = ["roboshop-bastion", "catalogue", "user",
    "cart", "shipping", "payment",
    "frontend", "mongodb", "reddis", "mysql",
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
