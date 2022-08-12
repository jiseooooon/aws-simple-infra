resource "aws_instance" "bastion" {
  ami                         = data.aws_ami.amazon-linux2.id
  instance_type               = var.bastion_instance_type
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.tier-public-subnet-1.id
  key_name                    = local.test_key
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "${var.resource_prefix}-Bastion"
  }
}
