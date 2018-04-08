provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "terraform.backend.urbanfortress.uk"
    key    = "packer/ecs"
    region = "${var.region}"
  }
}

variable "cidr" {
    default = "10.1.0.0/16"
}

resource "aws_vpc" "packer" {
  cidr_block                       = "${var.cidr}"
  instance_tenancy                 = "default"
  enable_dns_support               = true
  enable_dns_hostnames             = true
  enable_classiclink               = false
  assign_generated_ipv6_cidr_block = false

  tags {
    Name        = "packer"
  }
}

resource "aws_internet_gateway" "packer" {
  vpc_id = "${aws_vpc.packer.id}"

  tags {
    Name        = "packer"
  }
}

resource "aws_network_acl" "packer" {
  vpc_id = "${aws_vpc.packer.id}"

  egress {
    protocol   = "-1"
    rule_no    = "100"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    to_port    = "0"
  }

  ingress {
    protocol   = "-1"
    rule_no    = "100"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    to_port    = "0"
  }

  tags {
    Name        = "packer"
  }
}

resource "aws_route_table" "packer" {
  vpc_id = "${aws_vpc.packer.id}"

  tags {
    Name        = "packer"
  }
}

resource "aws_route" "packer" {
  route_table_id         = "${aws_route_table.packer.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.packer.id}"
}

resource "aws_main_route_table_association" "packer" {
  vpc_id         = "${aws_vpc.packer.id}"
  route_table_id = "${aws_route_table.packer.id}"
}

resource "aws_subnet" "packer" {
  vpc_id            = "${aws_vpc.packer.id}"
  cidr_block        = "${var.cidr}"
  availability_zone = "${var.availability_zone}"

  tags {
    Name = "packer"
  }
}


