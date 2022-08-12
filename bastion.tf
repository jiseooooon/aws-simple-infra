module "bastion-ec2" {
  source = "./common/terraform-aws-ec2-instance"

  name                        = "${var.resource_prefix}-Bastion"
  ami                         = data.aws_ami.amazon-linux2
  instance_type               = var.bastion_instance_type
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.tier-public-subnet-1.id
  key_name                    = local.test_key
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  monitoring                  = true
}
