A simple docker container to run with aws ses listening on port 25

Steps:
  - docker build -t postfix-example . 

If you would to directly use this image from dockerhub:

docker run -d --rm --name postfix-aws \
-e AWS_SES_HOST=<your smtp host name> \
-e AWS_SES_USERNAME=<your SES username>\
-e AWS_SES_PASSWORD=<your SES password>\
-e POSTFIX_HOST=localhost \
mjmustaf/aws-ses-postfix:latest
