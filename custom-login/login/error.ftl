<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=false; section>
    <div id="kc-error-message">
        <p class="instruction">
            ${message.summary}
        </p>
    </div>
</@layout.registrationLayout>
