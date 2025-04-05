FROM quay.io/keycloak/keycloak:24.0.3
 
 COPY docker-entrypoint.sh /opt/jboss/tools
 
 ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
 CMD ["-b", "0.0.0.0"]
