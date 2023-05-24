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

#### Our 2023 timeline 

* **Now**: API data dissemination pilot for Federal partners.
* **June**: We begin beta testing with grantees and auditors.
* **July**: Testing of search and download for AROs.
* **August**: User acceptance testing with grantees, auditors, and federal staff.   

#### Jump to

* [General updates](#general)
* Updates for [grantees and auditors](#grantees-and-auditors)
* Updates for [agencies](#agencies)

<h3 id="general" >General updates</h3>

{#
Updates are sorted with newest posts at the top. The "date" field in the update's front matter is what we use. The date in the filename is the date we create the file, and is never seen outside of the repo.
#}

<ul>
{% for item in collections.general | sort(true, true, "date") %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>

<h3 id="grantees-and-auditors">For grantees and auditors</h3>
<ul>
{% for item in collections.submitters | sort(true, true, "data.date") %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>


<h3 id="agencies">For Federal awarding agencies</h3>
<ul>
{% for item in collections.federal | sort(true, true, "time") %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>
