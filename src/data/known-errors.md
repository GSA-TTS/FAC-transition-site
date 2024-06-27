---
layout: sidenav.njk
title: Known errors
meta:
  name: Historic data curation
  description: Documentation about the data migration from Census to GSA.
---

# Known data errors

There are known errors in the FAC data. We document their discovery here, possible remediation. The ultimate repair of errors follows our [data curation process]().

We include a brief, one-line sumamry of each error here, and additional details can be found on the linked pages.

<div class="grid-container">
    {% for item in collections.known_errors %}
        {% if item.data.title | length %}
            <div class="grid-row">
                <div>
                    <h3 href="{{ item.data.title | slugify }}">{{item.data.title}}</h3>
                    <p>{{item.data.slug}}</p>
                    <p><b>Discovered</b>: {{item.data.discovered_date}}</p>
                    <p><b>Github issue</b>: {% if item.data.github %}{{item.data.github}}{% else %}TBD{%endif%}
                </div>
            </div>
        {% endif %}
    {% endfor %}
</div>
