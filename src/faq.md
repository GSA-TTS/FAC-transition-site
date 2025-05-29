---
layout: home.njk
title: Frequently Asked Questions
meta:
  name: Frequently Asked Questions about the FAC
  description: Answers for auditees and auditors navigating the new Federal Audit Clearinghouse.
eleventyComputed:
  eleventyNavigation:
    key: FAQ
    order: 3
---

# Frequently Asked Questions

We’ve compiled answers to common questions from auditees and auditors working with the FAC system.

---

## For Auditees

{% set audience = "auditee" %}

<ol>
  {% for faq in collections.faq %}
    {% if "submitter" in faq.url or audience in faq.url %}
      <li><a href="#{{ faq.url | hashcode }}">As an {{ audience }}, {{ faq.data.question }}</a></li>
    {% endif %}
  {% endfor %}
</ol>

{% set ndx = 1 %}
{% for faq in collections.faq %}
  {% if "submitter" in faq.url or audience in faq.url %}
  <h3 id="{{ faq.url | hashcode }}">Q{{ ndx }}: As an {{ audience }}, {{ faq.data.question }}</h3>
  {{ faq.content | safe }}
  {% set ndx = ndx + 1 %}
  {% endif %}
{% endfor %}

---

## For Auditors

{% set audience = "auditor" %}

<ol>
  {% for faq in collections.faq %}
    {% if "submitter" in faq.url or audience in faq.url %}
      <li><a href="#{{ faq.url | hashcode }}">As an {{ audience }}, {{ faq.data.question }}</a></li>
    {% endif %}
  {% endfor %}
</ol>

{% set ndx = 1 %}
{% for faq in collections.faq %}
  {% if "submitter" in faq.url or audience in faq.url %}
  <h3 id="{{ faq.url | hashcode }}">Q{{ ndx }}: As an {{ audience }}, {{ faq.data.question }}</h3>
  {{ faq.content | safe }}
  {% set ndx = ndx + 1 %}
  {% endif %}
{% endfor %}



