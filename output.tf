output "bastion-public-ip" {
  value = module.bastion-ec2.public_ip
  description = "Bastion Public IP Address"
}