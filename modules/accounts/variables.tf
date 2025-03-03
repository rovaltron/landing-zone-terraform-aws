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

variable "security_ou_id" {
  description = "ID of the security organizational unit"
  type        = string
}

variable "infrastructure_ou_id" {
  description = "ID of the infrastructure organizational unit"
  type        = string
}
