provider "aws" {
  region = "ap-northeast-1a"
  alias  = "ap-northeast-1a"
}

provider "aws" {
  region = "ap-northeast-1c"
  alias  = "ap-northeast-1c"
}

# Creating VPC
resource "aws_vpc" "asiait-vpc" {
  cidr_block       = var.asiait-vpc
  instance_tenancy = "default"
  tags = {
    Name = "asiait-vpc"
  }
}

resource "aws_vpc" "workspace-vpc" {
  cidr_block       = var.workspace-vpc
  instance_tenancy = "default"
  tags = {
    Name = "workspace-vpc"
  }
}

resource "aws_vpc" "inspection-vpc" {
  cidr_block       = var.inspection-vpc
  instance_tenancy = "default"
  tags = {
    Name = "inspection-vpc"
  }
}


