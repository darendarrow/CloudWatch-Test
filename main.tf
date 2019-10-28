/*
* main.tf
*/

provider "aws" {
  region = ""
}

module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.1.0"
  # ID of the VPC where to create security group
  vpc_id = ""
  # Name of security group
  name = ""
}

module "iam" {
  source  = "terraform-aws-modules/iam/aws"
  version = "2.3.0"
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.8.0"
}

module "cloudwatch" {
  source  = "terraform-aws-modules/cloudwatch/aws"
  version = "0.2.0"
}

module "key-pair" {
  source  = "terraform-aws-modules/key-pair/aws"
  version = "0.2.0"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.17.0"
}

module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "1.0.0"
}
