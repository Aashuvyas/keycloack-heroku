# Start from official Keycloak image
FROM quay.io/keycloak/keycloak:24.0.3

# Switch to root to install any needed packages (optional, if needed)
USER root

# Optional: Install curl or other debugging tools (remove if not needed)
# RUN microdnf install -y curl && microdnf clean all

# Switch back to keycloak user
USER 1000

# Set environment variables (optional)
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Use Docker build to optimize Keycloak image
RUN /opt/keycloak/bin/kc.sh build

# Expose default port (not necessary for Heroku, but for clarity)
EXPOSE 8080

# Heroku provides dynamic port via $PORT env var
# So use it to bind Keycloak to the correct port
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

CMD ["start", "--http-port=${PORT}", "--hostname-strict=false", "--hostname-strict-https=false"]
