resource "aws_organizations_account" "security" {
  name      = "Security Account"
  email     = var.security_account_email
  role_name = "OrganizationAccountAccessRole"

  parent_id = var.security_ou_id
}

resource "aws_organizations_account" "log_archive" {
  name      = "Log Archive Account"
  email     = var.log_archive_email
  role_name = "OrganizationAccountAccessRole"

  parent_id = var.security_ou_id
}

resource "aws_organizations_account" "shared_services" {
  name      = "Shared Services Account"
  email     = var.shared_services_email
  role_name = "OrganizationAccountAccessRole"

  parent_id = var.infrastructure_ou_id
}
