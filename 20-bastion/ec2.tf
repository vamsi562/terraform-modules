resource "aws_instance" "bastion" {
  ami                    = local.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [local.bastion_sg_id]
  subnet_id              = local.subnet_id
  tags = merge(local.common_tags,
    {
      Name = "${local.common_name_suffix}-bastion"
    },
    var.ec2_tags
  )
}
