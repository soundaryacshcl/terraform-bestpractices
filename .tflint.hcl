# Configure AWS provider version constraints
rule "terraform_required_providers" {
  enabled = true
}

# Naming conventions
rule "terraform_naming_convention" {
  enabled = true
  format  = "snake_case"
}
