A simple postfix container built around aws ses.

# TL-DR
 1. ses-terraform -> create a ses resource with terraform
 2. ses-docker -> create docker image and run the image locally
 3. ses-ansible( optional ) -> use ansible roles and a docker deploy playbook and a dcoker compose to launch a postfix container from ECR to your target host


# Available docker environment variables:
- AWS_SES_USERNAME (required): Username of the identity account
- AWS_SES_PASSWORD (required): Password of the identify account
- AWS_SES_HOST(required): SMTP server name
- POSTFIX_HOST(required): Use 'localhost' if running locally

# Dockerhub image
```
https://hub.docker.com/repository/docker/mjmustaf/aws-ses-postfix

```
# Usage
```
docker run -d --rm --name <name your conatiner> \
-e AWS_SES_HOST=<your smtp host name> \
-e AWS_SES_USERNAME=<your SES username>\
-e AWS_SES_PASSWORD=<your SES password>\
-e POSTFIX_HOST=localhost \
mjmustaf/aws-ses-postfix:latest

```

# Test 

- Docker exec to the container  ``` docker exec -it <name your container> /bin/bash ``` and the commands 
below line by line
```
sendmail -f <senderemaail> <Receiveremail>
From:  <Sender Email>
Subject: Amazon SES postfix container Test                
This message was sent using Amazon SES from a postfix container.            
.
```
