---
layout: home.njk
---
<style>
    {% include "swagger.css" %}
</style>

# FAC API pilot documentation

The FAC dissemination API is actively under development. What follows is live documentation from the API as it exists today.

<div id="fac-api-docs" />
<script src="https://unpkg.com/swagger-ui-dist@3/swagger-ui-bundle.js"></script>
<script>
    window.onload = function () {
        const ui = SwaggerUIBundle({
            url: "https://fac-dev-postgrest.app.cloud.gov/#/",
            dom_id: "#fac-api-docs",
            deepLinking: true,
            supportedSubmitMethods: [],
            onComplete: function () { 
                // This seems like a horrible way to clean up what Swagger
                // provides...
                var element = document.getElementsByClassName("info")[0];
                element.remove();
                element = document.getElementsByClassName("schemes")[0];
                element.remove();
                element = document.getElementsByClassName("scheme-container")[0];
                element.remove();
            }
        })
    }
</script>
