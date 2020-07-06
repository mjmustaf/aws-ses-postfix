/*
     Filename: ses.tf
     Synopsis: Handles AWS Simple Email Service (SES) configuration
     Description: There are 2 ways to establish identity domain for SES. The terraform code below creates the resources needed for identity management
     Dependencies:
     Comments: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html
   */

resource "aws_ses_email_identity" "example" {
  email = var.email
}