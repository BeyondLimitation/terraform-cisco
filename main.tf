terraform {
  backend "remote" {
    organization = "Lee-personal-project"

    workspaces {
      name = "cisco-ha"
    }
  }
}

provider "aws" {
  region = var.region
}

module "cisco_lab" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name = var.vpc-name
  cidr = var.vpc-cidr

  azs = var.azs
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets

  tags = {
    "IaCTool" = "Terraform"
    "Project" = "Cisco HA"
  }
}