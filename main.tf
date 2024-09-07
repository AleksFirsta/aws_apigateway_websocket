terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Configure the AWS Provider
# provider "aws" {
#   region = "us-east-1"
# }

module "apigateway-v2-test1" {
  source  = "terraform-aws-modules/apigateway-v2/aws"
  #source  = "git::https://github.com/terraform-aws-modules/terraform-aws-apigateway-v2.git"
  version = "5.2.0"
# Disable creation of the API and all resources
  create = true
  name = "test"

  # Disable creation of the domain name and API mapping
  create_domain_name = false

  # Disable creation of Route53 alias record(s) for the custom domain
  create_domain_records = false

  # Disable creation of the ACM certificate for the custom domain
  create_certificate = false

  # Disable creation of the routes and integrations
  create_routes_and_integrations = false

  # Disable creation of the stage
  create_stage = false

}
