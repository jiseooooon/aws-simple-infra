locals {
  test_region = var.isDemoo ? var.region : "ap-northeast-2"
  test_key = var.isDemoo ? var.bastion_key_pair_name : "bastion-key-pair"
}