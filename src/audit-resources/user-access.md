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
access_date: "20231226"
include_survey: true
eleventyComputed:
  eleventyNavigation:
    key: Managing user access
    parent: Audit submission resources
---
{% import "components/image_modal.njk" as image_modal with context %}

# Managing user access

Anyone with access to the audit submission can modify the Auditee and Auditor Certifying Officials and add additional Audit Editors.

Keep in mind that each audit submission can have only one Auditee Certifying Official and one Auditor Certifying Official, and these must be different individuals.

The following instructions guide you through the process of changing user roles. **After completing these steps, you must log out and log back in for your changes to take effect.**

<ol>
{% for item in collections.access %}
  {% if item.data.title | length %}
  <li>
    <a href="#{{item.data.title | slugify }}">{{item.data.title}}</a>
  </li>
  {% endif %}
{% endfor %}

<div class="grid-container">

{% for item in collections.access %}

  {% if item.data.title | length %}

    <div class="grid-row">
      <div class="grid-col-12 margin-top-8">

  {% if item.data.image %}
      <img class="cursor-pointer" src="{{config.baseUrl}}assets/img/access/{{access_date}}/{{item.data.image}}" width=400 style="margin-left: 2em; margin-bottom: 2em; float: right; border: 1px solid #555;" aria-controls="image-modal-{{item.data.image}}" data-open-modal />
      {{ image_modal.modal(item.data.image, 'assets/img/access/' + access_date + '/' + item.data.image) }}
  {% endif %}
        <h2 id="{{ item.data.title | slugify }}">{{item.data.title}}</h2>

  {{item.content | safe }}
  
  </div>
</div>
  {% endif %}
{% endfor %}
</div>
