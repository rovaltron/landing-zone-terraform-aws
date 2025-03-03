variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "organization_name" {
  description = "Name of the AWS Organization"
  type        = string
}

variable "enable_features" {
  description = "List of AWS Organization features to enable"
  type        = list(string)
  default     = ["SERVICE_CONTROL_POLICIES", "AWS_CONFIG", "CLOUDTRAIL"]
}

variable "management_account_email" {
  description = "Email address for the management account"
  type        = string
}

variable "security_account_email" {
  description = "Email address for the security account"
  type        = string
}

variable "log_archive_email" {
  description = "Email address for the log archive account"
  type        = string
}

variable "shared_services_email" {
  description = "Email address for the shared services account"
  type        = string
}
