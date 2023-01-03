module "vpc" {
  source = "github.com/azavea/terraform-aws-vpc"

  name = "Default"
  region = "ap-northeast-1"
  cidr_block = "10.0.0.0/16"
  private_subnet_cidr_blocks = ["10.0.1.0/24", "10.0.3.0/24"]
  public_subnet_cidr_blocks = ["10.0.0.0/24", "10.0.2.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
  
  project = "Something"
  environment = "Staging"
}