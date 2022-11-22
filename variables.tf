variable "region" {
  type = string
  description = "AWS 리젼"
}

variable "vpc-name" {
  type = string
  description = "VPC 이름"
}

variable "azs" {
  type = list(string)
  description = "가용영역 목록"
}

variable "vpc-cidr" {
  type = string
  description = "VPC CIDR Block"
}

variable "private_subnets" {
  type = list(string)
  description = "Public Subnet 목록"
}

variable "public_subnets" {
  type = list(string)
  description = "Private Subnet 목록"
}
