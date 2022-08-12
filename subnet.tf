resource "aws_subnet" "tier-public-subnet-1" {
  vpc_id = aws_vpc.tier-vpc.id
  cidr_block = cidrsubnet(var.vpc_cidr, 1, 0)
  availability_zone = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch=true
  tags = {
    Name = "${var.resource_prefix}-PUB-1"
  }
}

resource "aws_subnet" "tier-public-subnet-2" {
  vpc_id = aws_vpc.tier-vpc.id
  cidr_block = cidrsubnet(var.vpc_cidr, 1, 1)
  availability_zone = length(data.aws_availability_zones.available.names)>2 ? data.aws_availability_zones.available.names[2] : data.aws_availability_zones.available.names[1]
  map_public_ip_on_launch=true
  tags = {
    Name = "${var.resource_prefix}-PUB-2"
  }
}
