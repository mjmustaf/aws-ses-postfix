aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 962546071737.dkr.ecr.us-west-2.amazonaws.com
docker tag aws-ses-postfix-example 962546071737.dkr.ecr.us-west-2.amazonaws.com/junaid/postfix-example:latest
docker push 962546071737.dkr.ecr.us-west-2.amazonaws.com/junaid/postfix-example:latest