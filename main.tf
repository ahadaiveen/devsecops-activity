provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "sctp-ce10-tfstate"
    key    = "ahadaiveen/devsecops-activity/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "activity_bucket" {
  bucket = "ahadaiveen-devsecops-activity-255945442255"
}