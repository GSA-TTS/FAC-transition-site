---
layout: home.njk
api_endpoint: "https://api.data.gov/TEST/audit-clearinghouse/v0/dissemination"
---

<link rel="stylesheet" type="text/css" href="swagger-ui.css">


# FAC API pilot documentation

The FAC dissemination API is actively under development. What follows is live documentation from the API as it exists today.

<div id="fac-api-docs" />
<script src="swagger-ui-bundle.js"></script>
<script>
    window.onload = function () {
        const ui = SwaggerUIBundle({
            url: "{{api_endpoint}}",
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
