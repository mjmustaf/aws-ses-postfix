/*
  Filename: variables.tf
  Synopsis: Terraform layer-01 input variables
  Description: N/A
  Layer: 01
  Comments: N/A
*/

variable "region" {
  default = "us-west-2"
}

terraform {
  required_version = ">= 0.12.0"
}

provider "aws" {
  version = ">= 2.28.1"
  region  = var.region
}
#### Egress Email Related Variables

# Amazon SES identity domain
variable "email" {
  description = "email  that SES will send outbound mail from"
  default ="junaid.mustafa@gmail.com"
}

variable "ses_recipient_filter" {
  description = "Domain name filter to enforce that SES must be sending an email to"
   default ="gmail.com"
}

