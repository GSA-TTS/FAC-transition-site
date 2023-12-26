---
layout: home.njk
title: Managing user access
meta:
  name: Managing user access
  description: Learn how to add or edit users on single audit submissions.
terms:
  cfac: Census FAC
  cfac_url: https://facweb.census.gov/
  gfac: GSA FAC
  gfac_url: https://fac.gov/
user-access_date: "20231226"
inlcude_survey: true
---


# Managing user access

The Audit Editor can make changes to the Auditee and Auditor Certifying Officials, as well as add additional Audit Editors, to a single audit submission. At this time, it’s not possible to remove Audit Editors.

Keep in mind that you may only have one Auditee Certifying Official and Auditor Certifying Official per single audit submission. These may not be the same individuals and they may not be the same as any Audit Editors.


The instructions below walk you through making changes to user roles.

<ol>
{% for item in collections.user-access %}
  {% if item.data.title | length %}
  <li>
    <a href="#{{item.data.title | slugify }}">{{item.data.title}}</a>
  </li>
  {% endif %}
{% endfor %}

<div class="grid-container">

{% for item in collections.user-access %}

  {% if item.data.title | length %}

    <div class="grid-row">
      <div class="grid-col-12 margin-top-8">

  {% if item.data.image %}
      <img src="{{config.baseUrl}}assets/img/tribal/{{tribal_date}}/{{item.data.image}}" width=400 style="margin-left: 2em; margin-bottom: 2em; float: right; border: 1px solid #555;"/>
  {% endif %}
        <h2 id="{{ item.data.title | slugify }}">{{item.data.title}}</h2>

  {{item.content | safe }}
  
  </div>
</div>
  {% endif %}
{% endfor %}
</div>

<script src="https://touchpoints.app.cloud.gov/touchpoints/ba4ae239.js" async></script>
