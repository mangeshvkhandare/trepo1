provider "aws" {
  region = "us-west-2"
   shared_credentials_file = "$HOME/.aws/credentials"
}

terraform {
  backend "s3" {
    bucket = "tfb1tr123"
    encrypt = true
    dynamodb_table = "tftabl"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}

resource "aws_vpc" "demo1" {
  cidr_block = "10.5.0.0/16"
  tags = {
      Name = "VPC1"
  }
}
