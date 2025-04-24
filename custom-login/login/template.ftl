<#-- themes/your-theme/login/template.ftl -->

<#macro registrationLayout displayInfo=false displayMessage=true; section>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Login | Keycloak</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/login.css">
</head>
<body>
    <div class="kc-container">
        <div class="kc-header">
            <h1>Welcome to Keycloak</h1>
        </div>

        <#-- Message area if enabled -->
        <#if displayMessage && message?has_content>
            <div class="kc-message ${message.type}">
                ${message.summary}
            </div>
        </#if>

        <#-- Main content section -->
        <div class="kc-content">
            <#nested "form">
        </div>

        <div class="kc-footer">
            <p>Powered by Keycloak</p>
        </div>
    </div>
</body>
</html>
</#macro>
