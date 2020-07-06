A simple postfix container built around aws ses.

# Available docker environment variables:
- AWS_SES_USERNAME (required): Username of the identity account
- AWS_SES_PASSWORD (required): Password of the identify account
- AWS_SES_HOST(required): SMTP server name
- POSTFIX_HOST(required): Use 'localhost' if running locally

# usage

docker run -d --rm --name <name your conatiner> \
-e AWS_SES_HOST=<your smtp host name> \
-e AWS_SES_USERNAME=<your SES username>\
-e AWS_SES_PASSWORD=<your SES password>\
-e POSTFIX_HOST=localhost \
mjmustaf/aws-ses-postfix:latest
