/*
  Filename: dependencies.tf
  Synopsis: Backend settings required for module setup
  Description: Declaration of providers, local variables, and backend remote state locations
  Layer: 01
  Dependencies: layer-00
  Comments: The contents of this file should not be modified by Operators
*/

### Backend
# terraform {
#   backend "s3" {
#     encrypt        = true
#     region         = "us-gov-west-1"
#     bucket         = "sms-cre-terraform"
#     dynamodb_table = "sms-cre-terraform" # - (Optional) The name of a DynamoDB table to use for state locking and consistency. The table must have a primary key named LockID. If not present, locking will be disabled.
#     key            = "sms-management/layer-01.tfstate"
#   }
# }

# ### Providers
# provider "aws" {
#   region = data.terraform_remote_state.layer_00.outputs.aws_region
# }

data "aws_caller_identity" "current" {}


