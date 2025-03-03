# AWS Landing Zone Terraform Configuration

This repository contains Terraform configurations to set up an AWS Landing Zone with AWS Organizations, including the necessary organizational units, accounts, and security policies.

## Architecture

The Landing Zone setup includes:

- AWS Organizations with three organizational units:
  - Security
  - Workloads
  - Infrastructure
- Core accounts:
  - Management Account
  - Security Account
  - Log Archive Account
  - Shared Services Account
- Security policies:
  - Deny root account usage
  - Require MFA for all IAM users

## Prerequisites

- Terraform >= 1.0.0
- AWS CLI configured with appropriate credentials
- Email addresses for each AWS account to be created

## Usage

1. Clone this repository
2. Configure your AWS credentials:
   ```bash
   export AWS_ACCESS_KEY_ID="your_access_key"
   export AWS_SECRET_ACCESS_KEY="your_secret_key"
   ```

3. Create a `terraform.tfvars` file with your configuration:
   ```hcl
   organization_name         = "your-organization"
   management_account_email  = "management@example.com"
   security_account_email    = "security@example.com"
   log_archive_email        = "logs@example.com"
   shared_services_email    = "shared@example.com"
   ```

4. Initialize Terraform:
   ```bash
   terraform init
   ```

5. Review the plan:
   ```bash
   terraform plan
   ```

6. Apply the configuration:
   ```bash
   terraform apply
   ```

## Security Considerations

- Keep your AWS credentials secure and never commit them to version control
- Review and customize the security policies in `policies/scp/` according to your needs
- Enable MFA for all IAM users as per security best practices
- Regularly review and audit the AWS Organization's security settings

## Modules

- `organization`: Sets up AWS Organizations and organizational units
- `accounts`: Creates and manages AWS accounts
- `security`: Implements security policies and controls

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details. GoodLuck
