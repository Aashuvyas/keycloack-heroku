FROM quay.io/keycloak/keycloak:24.0.3
 
 COPY docker-entrypoint.sh /opt/jboss/tools

 RUN /opt/keycloak/bin/kc.sh build

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--hostname-strict=false", "--hostname-strict-https=false","headers.content-security-policy=frame-src 'self' https://jsw-keycloack-e5024e9bf0fd.herokuapp.com"]
CMD ["--http-port=${PORT}"]
