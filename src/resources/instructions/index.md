---
layout: home.njk
title: Using the new FAC
meta:
  name: Using the new FAC
  description: Preview the new single audit submission process and follow step-by-step instructions for completion.
terms:
  cfac: Census FAC
  cfac_url: https://facweb.census.gov/
  gfac: GSA FAC
  gfac_url: https://fac.gov/
walkthrough_date: "20230912"
---


# Submitting single audit reports using the new FAC

Our goal is to make the single audit submission process as easy as possible for the grants community. With that in mind, we designed the new FAC to be similar to the Census FAC. Entities will now complete a a series of simple webforms and XLSX workbooks to submit their single audit package.

Everyone involved in the single audit submission process must have an account with [Login.gov](https://login.gov/). This includes auditees and auditors. [Creating a Login.gov account](https://login.gov/create-an-account/) is fully online and secure.

This how-to guide goes through the submission process step-by-step.


## The {{terms.gfac}} in brief 

<ol>
{% for item in collections.walkthrough %}
  {% if item.data.title | length %}
  <li>
    <a href="#{{item.data.title | slugify }}">{{item.data.title}}</a>
  </li>
  {% endif %}
{% endfor %}

<div class="grid-container">

{% for item in collections.walkthrough %}

  {% if item.data.title | length %}

    <div class="grid-row">
      <div class="grid-col-12 margin-top-8">

  {% if item.data.image %}
      <img src="{{config.baseUrl}}assets/img/walkthrough/{{walkthrough_date}}/{{item.data.image}}" width=400 style="margin-left: 2em; margin-bottom: 2em; float: right; border: 1px solid #555;"/>
  {% endif %}
        <h2 id="{{ item.data.title | slugify }}">{{item.data.title}}</h2>

  {{item.content | safe }}
  
  </div>
</div>
  {% endif %}
{% endfor %}
</div>
