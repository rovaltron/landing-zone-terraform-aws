output "organization_id" {
  description = "The ID of the AWS Organization"
  value       = module.organization.organization_id
}

output "organization_arn" {
  description = "The ARN of the AWS Organization"
  value       = module.organization.organization_arn
}

output "management_account_id" {
  description = "The ID of the management account"
  value       = module.accounts.management_account_id
}

output "security_account_id" {
  description = "The ID of the security account"
  value       = module.accounts.security_account_id
}
