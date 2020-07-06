FROM ubuntu:latest
MAINTAINER Junaid M <junaid.mustafa@gmail.com>

ENV DEBIAN_FRONTEND="noninteractive"
ENV AWS_SES_HOST=email-smtp.us-west-2.amazonaws.com
ENV AWS_SES_PORT=587
ENV AWS_SES_USERNAME=
ENV AWS_SES_PASSWORD=
ENV MY_NETWORKS="192.168.0.0/16 172.16.0.0/12 10.0.0.0/8"
ENV POSTFIX_HOST=localhost 
COPY run.sh /run.sh
COPY test.sh /test.sh

RUN apt-get update \
    && apt-get install -y postfix ca-certificates rsyslog supervisor \
    && postconf -e "append_dot_mydomain = no" \
          "smtp_sasl_auth_enable = yes" \
          "smtp_sasl_security_options = noanonymous" \
          "smtp_sasl_password_maps = hash:/etc/postfix/sasl_passwd" \
          "smtp_use_tls = yes" \
          "smtp_tls_security_level = encrypt" \
          "smtp_tls_note_starttls_offer = yes" \
          "smtp_tls_CAfile = /etc/ssl/certs/ca-certificates.crt" \
          'smtp_tls_session_cache_database = btree:${data_directory}/smtp_scache' \
          'smtpd_tls_session_cache_database = btree:${data_directory}/smtpd_scache' \
          "smtpd_relay_restrictions = permit_mynetworks permit_sasl_authenticated defer_unauth_destination" \
          "myorigin = localhost" \
          "inet_protocols = all" \
          "syslog_name = postfix-logs" \
          "maillog_file = /var/log/postfix.log" \
          "mailbox_size_limit = 0" \
          "alias_maps = hash:/etc/aliases" \
          "alias_database = hash:/etc/aliases" \
          "readme_directory = no" \
          "recipient_delimiter = +" \
          "inet_interfaces = all"
     
EXPOSE 25

ENTRYPOINT ["/run.sh"]
