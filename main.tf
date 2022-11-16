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