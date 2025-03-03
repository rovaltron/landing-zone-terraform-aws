output "organization_id" {
  description = "The ID of the AWS Organization"
  value       = aws_organizations_organization.main.id
}

output "organization_arn" {
  description = "The ARN of the AWS Organization"
  value       = aws_organizations_organization.main.arn
}

output "root_id" {
  description = "The ID of the root organizational unit"
  value       = aws_organizations_organization.main.roots[0].id
}
