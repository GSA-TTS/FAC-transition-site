---
layout: home.njk
title: Contact the FAC
meta:
  name: Contact the FaC
  description: Contact the FAC with questions about the single audit submission process.
---

# {{title}}

## Auditees

{% set audience = "auditee" %}


<ol>
{% for faq in collections.faq %}
    {% if "submitter" in faq.url or audience in faq.url %}
        <li><a href="#{{ faq.url | hashcode }}">As an {{audience}}, {{faq.data.question }}</a></li>
    {% endif %}
{% endfor %}
</ol>

{% set ndx = 1 %}
{% for faq in collections.faq %}
    {% if "submitter" in faq.url or audience in faq.url %}
        <h3 id="{{ faq.url | hashcode }}">Q{{ndx}}: As an {{audience}}, {{faq.data.question }}</h3>
        {{ faq.content | safe }}
    {% set ndx = ndx + 1 %}
    {% endif %}
{% endfor %}

## Auditors

{% set audience = "auditor" %}
<ol>
{% for faq in collections.faq %}
    {% if "submitter" in faq.url or audience in faq.url %}
        <li><a href="#{{ faq.url | hashcode }}">As an {{audience}}, {{faq.data.question }}</a></li>
    {% endif %}
{% endfor %}
</ol>

{% set ndx = 1 %}
{% for faq in collections.faq %}
    {% if "submitter" in faq.url or audience in faq.url %}
        <h3 id="">Q{{ndx}}: As an {{audience}}, {{faq.data.question }}</h3>
        {{ faq.content | safe }}
    {% set ndx = ndx + 1 %}
    {% endif %}
{% endfor %}

