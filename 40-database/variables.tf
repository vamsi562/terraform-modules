variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "project_name" {
  type    = string
  default = "roboshop"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "ec2_tags" {
  type    = map(string)
  default = {}
}

# variable "zone_id" {
#   type    = string
#   default = "Z0443476BR0YLVN9TX31"
# }

variable "domain_name" {
  type    = string
  default = "chikoo.fun"
}
