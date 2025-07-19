# tests/basic.tftest.hcl
run "default" {
  command = plan          # use 'plan' (common) or 'apply' if you need outputs

  variable = {
    aws_region    = "us-east-1"
    ami_id        = "ami-020cba7c55df1f615"
    instance_type = "t2.micro"
  }

  assert {
    condition     = length(aws_instance.this) == 1
    error_message = "Exactly one EC2 instance should be created"
  }
}
