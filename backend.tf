 terraform {
  backend "s3" {
    bucket       = "terraform-bestpractices"
    key          = "terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
  }
} 
