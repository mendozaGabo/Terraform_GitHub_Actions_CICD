provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "gabrielo-bucket"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "gabrielo-db"
    encrypt        = true
  }
}
