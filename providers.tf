provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "gabriel-s3bucket"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "gabriel-date-dblocks"
    encrypt        = true
  }
}
