FROM quay.io/keycloak/keycloak:24.0.3

RUN mkdir -p /opt/keycloak/providers
COPY com.weare5stones.keycloak.authenticators-emailtotp-2.1.0.jar /opt/keycloak/providers/
COPY custom-login/ /opt/keycloak/themes/custom-login/
 
 COPY docker-entrypoint.sh /opt/jboss/tools

 RUN /opt/keycloak/bin/kc.sh build

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--hostname-strict=false","--hostname-strict-https=false","--proxy=edge"]
CMD ["--http-port=${PORT}"]
