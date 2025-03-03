output "security_account_id" {
  description = "The ID of the security account"
  value       = aws_organizations_account.security.id
}

output "log_archive_account_id" {
  description = "The ID of the log archive account"
  value       = aws_organizations_account.log_archive.id
}

output "shared_services_account_id" {
  description = "The ID of the shared services account"
  value       = aws_organizations_account.shared_services.id
}
