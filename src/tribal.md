---
layout: home.njk
title: Tribal audit submissions
meta:
  name: Tribal audit submissions
  description: Learn how to log in to access Tribal audit data from the Federal Audit Clearinghouse
terms:
  cfac: Census FAC
  cfac_url: https://facweb.census.gov/
  gfac: GSA FAC
  gfac_url: https://fac.gov/
tribal_date: "20231220"
inlcude_survey: true
---


# Searching Tribal audit submissions

Because Tribal entities have the right to protect their single audit data, only Federal employees with approved access can search and download these audit submissions. 

If you believe you should have access to these audits, [contact the FAC](https://support.fac.gov/hc/en-us/requests/new) via our help desk.

The instructions below walk you through searching for Tribal audits.

<ol>
{% for item in collections.tribal %}
  {% if item.data.title | length %}
  <li>
    <a href="#{{item.data.title | slugify }}">{{item.data.title}}</a>
  </li>
  {% endif %}
{% endfor %}

<div class="grid-container">

{% for item in collections.tribal %}

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
