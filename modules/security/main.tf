resource "aws_organizations_policy" "deny_root_account" {
  name = "Deny Root Account Usage"
  description = "Prevents usage of the root account"
  content = file("${path.root}/policies/scp/deny-root-account.json")
}

resource "aws_organizations_policy" "require_mfa" {
  name = "Require MFA"
  description = "Requires MFA for all IAM users"
  content = file("${path.root}/policies/scp/require-mfa.json")
}

resource "aws_organizations_policy_attachment" "deny_root_account" {
  policy_id = aws_organizations_policy.deny_root_account.id
  target_id = var.root_id
}

resource "aws_organizations_policy_attachment" "require_mfa" {
  policy_id = aws_organizations_policy.require_mfa.id
  target_id = var.root_id
}
