provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Resource-Prefix = var.resource_prefix
    }
  }
}

