FROM quay.io/keycloak/keycloak:24.0.3

COPY docker-entrypoint.sh /opt/jboss/tools

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start"]
