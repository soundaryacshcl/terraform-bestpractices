 terraform {
  backend "s3" {
    bucket  = "terraform-bestpractices"
    key     = "terraform.tfstate"
    region  = var.aws_region
    encrypt = true
  }
} 
