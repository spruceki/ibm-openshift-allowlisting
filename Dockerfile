FROM registry.access.redhat.com/ubi8/nginx-122

# Add application sources
ADD nginx/nginx.conf "${NGINX_CONF_PATH}"
ADD nginx/default.conf "${NGINX_CONFIGURATION_PATH}"
ADD ssl/selfsigned.crt /etc/pki/nginx/server.crt
ADD ssl/selfsigned.key /etc/pki/nginx/private/server.key

EXPOSE 8080
EXPOSE 8443

# Run script uses standard ways to run the application
CMD nginx -g "daemon off;"
