---
layout: home.njk
---

# Updates

<div class="usa-alert usa-alert--info">
  <div class="usa-alert__body">
    <h4 class="usa-alert__heading">In brief</h4>
    <p class="usa-alert__text">
        Single Audits are being <a href="https://facdissem.census.gov/Main.aspx">collected at Census</a> until October 1, 2023.

        Single Audits will be collected at fac.gov <b>after</b> October 1st.
    </p>
  </div>
</div>

Our 2023 timeline: 

* **Now**: API data dissemination pilot for Federal partners.
* **June**: We begin beta testing with grantees and auditors.
* **July**: Testing of search and download for AROs.
* **August**: User acceptance testing with grantees, auditors, and federal staff.   

### General announcements

<ul>
{% for item in collections.general %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>

### For grantees and auditors
<ul>
{% for item in collections.submitters %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>


### For agencies

<ul>
{% for item in collections.federal %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>