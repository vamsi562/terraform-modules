resource "aws_instance" "mongodb" {
  ami                    = local.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [local.mongodb_sg_id]
  subnet_id              = local.subnet_id
  tags = merge(local.common_tags,
    {
      Name = "${local.common_name_suffix}-mongodb"
    },
    var.ec2_tags
  )

}

resource "terraform_data" "mongodb" {
  triggers_replace = [
    aws_instance.mongodb.id
  ]
  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = aws_instance.mongodb.private_ip
  }
  provisioner "file" {
    source      = "bastion.sh"
    destination = "/tmp/bastion.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/bastion.sh",
      "sudo sh /tmp/bastion.sh mongodb"
    ]
  }
}
