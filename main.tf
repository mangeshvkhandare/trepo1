provider "aws" {
  region = "us-west-2"
  access_key = "AKIA2SFJGZCZ6BYW2LFS"
  secret_key = "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"
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
