terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = var.aws_region
}

module "organization" {
  source = "./modules/organization"

  organization_name = var.organization_name
  enable_features   = var.enable_features
}

module "accounts" {
  source = "./modules/accounts"

  depends_on = [module.organization]

  management_account_email = var.management_account_email
  security_account_email   = var.security_account_email
  log_archive_email       = var.log_archive_email
  shared_services_email   = var.shared_services_email
}

module "security" {
  source = "./modules/security"

  depends_on = [module.organization, module.accounts]

  organization_id = module.organization.organization_id
  root_id        = module.organization.root_id
}
