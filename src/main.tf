terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.68.0"
    }
  }
}

provider "aws" {
   region = "ap-south-1"
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
  vpc_id            = aws_vpc.base.id
  cidr_block        = "10.0.0.0/24"
  tags = {
    Name    = "web"
    Env     = "dev"
    Project = "learning"
  }
depends_on = [aws_vpc.base]
}

resource "aws_subnet" "two" {
  availability_zone = "ap-south-1b"
  vpc_id            = aws_vpc.base.id
  cidr_block        = "10.0.1.0/24"
  tags = {
    Name    = "db1"
    Env     = "dev"
    Project = "learning"
  }
depends_on = [aws_vpc.base]
}
