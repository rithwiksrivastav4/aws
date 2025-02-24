terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.68.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_vpc" "base" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name    = "terraform"
    Env     = "dev"
    Project = "learning"
  }
}

resource "aws_subnet" "one" {
  availability_zone = "ap-south-1a"
  vpc_id            = "vpc-0ab3a0e99702294f6"
  cidr_block        = "10.0.0.0/24"
  tags = {
    Name    = "web"
    Env     = "dev"
    Project = "learning"
  }
}

resource "aws_subnet" "two" {
  availability_zone = "ap-south-1b"
  vpc_id            = "vpc-0ab3a0e99702294f6"
  cidr_block        = "10.0.1.0/24"
  tags = {
    Name    = "db1"
    Env     = "dev"
    Project = "learning"
  }
}

resource "aws_subnet" "three" {
  availability_zone = "ap-south-1a"
  vpc_id            = "vpc-0ab3a0e99702294f6"
  cidr_block        = "10.0.2.0/24"
  tags = {
    Name    = "db2"
    Env     = "dev"
    Project = "learning"
  }
}

resource "aws_subnet" "four" {
  availability_zone = "ap-south-1b"
  vpc_id            = "vpc-0ab3a0e99702294f6"
  cidr_block        = "10.0.3.0/24"
  tags = {
    Name    = "app"
    Env     = "dev"
    Project = "learning"
  }
}
