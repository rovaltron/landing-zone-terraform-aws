output "deny_root_policy_id" {
  description = "The ID of the deny root account policy"
  value       = aws_organizations_policy.deny_root_account.id
}

output "require_mfa_policy_id" {
  description = "The ID of the require MFA policy"
  value       = aws_organizations_policy.require_mfa.id
}
