# A simple post fix container on ubuntu base image  to work around AWS SES(simple email services)

# Dependencis
- A domain identity account created either email or email doamin
- An identity account associated with AWS SES
- Please refer to the Terraform folder and documentation to create an indetity account

# Available environment variables:
- AWS_SES_USERNAME (required): Username of the identity account
- AWS_SES_PASSWORD (required): Password of the identify account
- AWS_SES_HOST (optional): The server name of AWS SES. The default is: email-smtp.us-west-2.amazonaws.com
- AWS_SES_PORT (optional): Port of the above server. It could be 25, 465 or 587 The default is 587
- POSTFIX_HOST (optional): Default is localhost

# Example:

docker run --interactive --tty --rm --name postfix-ses \
-e AWS_SES_HOST=email-smtp.us-west-2.amazonaws.com \
-e AWS_SES_USERNAME=AKIA6AHBXPC4XQVKX6XW -e \
AWS_SES_PASSWORD=BKykWF0Jd1ONGn27OOZnvaSSD5EVcmVHCIhCziT+9UpQ -e \
AWS_SES_PORT=2587 -e \
POSTFIX_HOST=localhost \
-v /var/log:/var/log \
aws-ses-postfix-example

sendmail -f junaid.mustafa@gmail.com junaid.mustafa@gmail.com
From: Junaid M <junaid.mustafa@gmail.com>
Subject: Amazon SES postfix container Test                
This message was sent using Amazon SES from a postfix container.            
.




