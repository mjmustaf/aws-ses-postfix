A simple postfix container built around aws ses.

# Available docker environment variables:
- AWS_SES_USERNAME (required): Username of the identity account
- AWS_SES_PASSWORD (required): Password of the identify account
- AWS_SES_HOST(required): SMTP server name
- POSTFIX_HOST(optional): Use localhost if running locally

# usage

docker run -d --rm --name postfix-aws \
-e AWS_SES_HOST= \
-e AWS_SES_USERNAME= \
-e AWS_SES_PASSWORD=\
-e POSTFIX_HOST=localhost \
<your docker image name>



