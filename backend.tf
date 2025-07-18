 terraform {
  backend "s3" {
    bucket       = "devops-lambda-tfstate"
    key          = "terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
  }
} 
