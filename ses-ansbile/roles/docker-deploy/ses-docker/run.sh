#!/bin/sh
# Synopsis: This script is copied into the postfix Docker image upon creation by the dockerfile.
#           This script is later ran when a container is started from the Docker image.

cp /etc/resolv.conf /var/spool/postfix/etc/resolv.conf
postconf -e "relayhost = $AWS_SES_HOST:$AWS_SES_PORT" \
            "myhostname = $POSTFIX_HOST" \
            "mynetworks = 127.0.0.0/8 [::ffff:127.0.0.0]/104 [::1]/128 $MY_NETWORKS" \
&& echo "$AWS_SES_HOST:$AWS_SES_PORT $AWS_SES_USERNAME:$AWS_SES_PASSWORD" > /etc/postfix/sasl_passwd \
&& postmap hash:/etc/postfix/sasl_passwd \
&& chown root:root /etc/postfix/sasl_passwd /etc/postfix/sasl_passwd.db \
&& chmod 0600 /etc/postfix/sasl_passwd /etc/postfix/sasl_passwd.db \

/usr/sbin/postfix start-fg
