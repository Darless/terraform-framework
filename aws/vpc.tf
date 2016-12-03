# VPC Definition
resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.0.0/16"
  tags {
    Name = "vpc1"
  }
}

# VPC Subnet 1
resource "aws_subnet" "vpc1-sub1" {
  vpc_id = "${aws_vpc.vpc1.id}"
  cidr_block = "10.0.1.0/24"
  tags {
    Name = "vpc1 subnet 1"
  }
}

# VPC Subnet 2
resource "aws_subnet" "vpc1-sub2" {
  vpc_id = "${aws_vpc.vpc1.id}"
  cidr_block = "10.0.2.0/24"
  tags {
    Name = "vpc1 subnet 2"
  }
}

# Internet Gatway for vpc1
resource "aws_internet_gateway" "vpc1-gw" {
    vpc_id = "${aws_vpc.vpc1.id}"

    tags {
        Name = "vpc1 gateway"
    }
}

# Add a default route to use the gateway
resource "aws_route_table" "r" {
    vpc_id = "${aws_vpc.vpc1.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.vpc1-gw.id}"
    }
    tags {
        Name = "main"
    }
}
