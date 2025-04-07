FROM quay.io/keycloak/keycloak:24.0.3
 
 COPY docker-entrypoint.sh /opt/jboss/tools

 RUN /opt/keycloak/bin/kc.sh build

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--hostname-strict=false","--hostname-strict-https=false","--proxy=edge"]
CMD ["--http-port=${PORT}"]
