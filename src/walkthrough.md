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
      <img src="{{config.baseUrl}}/assets/img/walkthrough/{{item.data.image}}" width=400 style="margin-left: 2em; margin-bottom: 2em; float: right; border: 1px solid #555;"/>
  {% endif %}
        <h2 id="{{ item.data.title | slugify }}">{{item.data.title}}</h2>

  {{item.content | safe }}

  <hr>
  {% set num_questions = item.data.questions | length %}
  {% if num_questions != 0 %}
    <h3>Questions</h3>
    <ol>
    {% for inc in item.data.questions %}
      {% set faq = faqs[inc] %}
      {% if faq.audience == "submitter" %}
        {% set audience = "auditee or auditor" %}
        {% set prompt = "As either an" %}
      {% else %}
        {% set audience = faq.audience %}
        {% set prompt = "As an" %}
      {% endif %}
      {% set ndx = "" %}
      {% if num_questions > 1 %}
        {% set ndx = loop.index %}
      {% endif %}
      <li>
        <b>Q</b>: {{prompt}} {{audience}}, {{faq.question }}<br/>
        <b>A</b>: {{faq.answer }}
      </li>
    {% endfor %}
  {% endif %}
  </div>
</div>
  {% endif %}
{% endfor %}
</div>
