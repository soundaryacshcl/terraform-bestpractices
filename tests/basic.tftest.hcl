# tests/basic.tftest.hcl
run "default" {
  command = plan          # use 'plan' (common) or 'apply' if you need outputs
  
  assert {
    condition     = length(aws_instance.this) == 1
    error_message = "Exactly one EC2 instance should be created"
  }
}
