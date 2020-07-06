An Ansible playbook and a role to docker deploy a postfix container from ECR to a host
The ```vars/ses-post.yml ``` file needs to be update with the vars 

Deploy Postfix as a container using its variables file:
``` 
ansible-playbook -i <TARGET_IP_ADDRESSES>, postfix-deploy.yml -e "docker_variables_filename='postfix.yml'"
