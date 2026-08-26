resource "aws_instance" "mongodb" {
  ami                    = local.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [local.mongodb_sg_id]
  subnet_id              = local.subnet_id
  user_data              = file("${path.module}/bootstrap.sh")
  tags = merge(local.common_tags,
    {
      Name = "${local.common_name_suffix}-mongodb"
    },
    var.ec2_tags
  )

}
