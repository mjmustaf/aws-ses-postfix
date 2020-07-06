aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin <your repo in ECR>
docker tag aws-ses-postfix-example <your repo> /junaid/postfix-example:latest
docker push <yourrepo>/junaid/postfix-example:latest