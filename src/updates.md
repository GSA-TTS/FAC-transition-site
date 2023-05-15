---
layout: home.njk
---

# Updates

<div class="usa-alert usa-alert--info">
  <div class="usa-alert__body">
    <h4 class="usa-alert__heading">Informative status</h4>
    <p class="usa-alert__text">
        Single Audits are being <a href="https://facdissem.census.gov/Main.aspx">collected at Census</a> until October 1, 2023.

        Single Audits will be collected at fac.gov <b>after</b> October 1st.
    </p>
  </div>
</div>

Our timeline in brief: 

* **Now**: API data dissemination pilot for Federal partners.
* **June**: We begin beta testing with grantees and auditors.
* **July**: Testing of search and download for AROs.
* **August**: User acceptance testing with grantees, auditors, and federal staff.   

### General announcements

{% set combined = [] %} 
{% for item in updates.updates %}
    {% if item.audience == "federal" or item.audience == "all" %}
        {% set combined = (combined.push(item), combined) %}  
    {% endif %}
{% endfor %}

<ul>
{% for item in updates.updates %}
  {% if item.audience == "all" %}
    <li>{{item.body}}</li>
  {% endif %}
{% endfor %}
</ul>

### Just for grantees and auditors

<ul>
{% for item in updates.updates %}
  {% if item.audience == "submitters" %}
    <li>{{item.body}}</li>
  {% endif %}
{% endfor %}
</ul>

### Just for Feds

<ul>
{% for item in updates.updates %}
  {% if item.audience == "federal" %}
    <li>{{item.body}}</li>
  {% endif %}
{% endfor %}
</ul>
