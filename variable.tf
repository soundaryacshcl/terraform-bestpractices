variable "aws_region" {
  description = "AWS region"
  type        = string

  validation {
    condition     = contains(["us-east-1", "us-west-2", "eu-central-1"], var.aws_region)
    error_message = "Choose one of the approved regions."
  }
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string

  validation {
    condition     = can(regex("^ami-[0-9a-f]{8,}$", var.ami_id))
    error_message = "AMI IDs start with ami- followed by at least 8 hex characters."
  }
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t3.micro"

  validation {
    condition     = can(regex("^[a-z][0-9]\\.[a-z]+$", var.instance_type))
    error_message = "Instance type must look like t3.micro, m5.large, etc."
  }
}
