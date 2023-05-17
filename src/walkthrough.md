---
layout: home.njk
terms:
  cfac: Census FAC
  cfac_url: https://facweb.census.gov/
  gfac: GSA FAC
  gfac_url: https://fac.gov/
---


# The new FAC

The new [fac.gov]({{terms.gfac_url}})&mdash;the {{terms.gfac}}&mdash;is designed to be accessible and consistent. It should "feel" like the previous FAC&mdash;the {{terms.cfac}}&mdash;but it is designed for significant improvements in years to come.

This walkthrough takes you step-by-step through the submission process while answering questions auditors and auditees have asked as part of our user research.


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
      <img src="{{config.baseUrl}}assets/img/walkthrough/{{item.data.image}}" width=400 style="margin-left: 2em; margin-bottom: 2em; float: right; border: 1px solid #555;"/>
  {% endif %}
        <h2 id="{{ item.data.title | slugify }}">{{item.data.title}}</h2>

  {{item.content | safe }}
  
  </div>
</div>
  {% endif %}
{% endfor %}
</div>
