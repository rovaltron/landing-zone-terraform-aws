variable "organization_name" {
  description = "Name of the AWS Organization"
  type        = string
}

variable "enable_features" {
  description = "List of AWS Organization features to enable"
  type        = list(string)
  default     = ["SERVICE_CONTROL_POLICIES"]
}
