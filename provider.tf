
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.15.0"
    }
  }

backend "s3" {

  bucket = "roboshop321"
  key = "vpc"
  region = "us-east-1"
  dynamodb_table = "roboshopdyn"
}

}

provider "aws" {
  # Configuration options

  region = "us-east-1"
}

#H:\devopstools\repos\Terraform

