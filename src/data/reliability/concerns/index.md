---
# Metadata
layout: home.njk
title: Known Errors in FAC Data
meta:
  name: Historic data curation
  description: Public list of known issues in Federal Audit Clearinghouse data and how we’re addressing them.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Concerns
    parent: Data
in_page_nav: true
---

# {{title}}

Even with built-in validations and checks, some issues still make it into our data.

This page tracks known errors in the Federal Audit Clearinghouse (FAC) data—whether introduced by system changes, validation oversights, or mistakes in submissions. If we know about a problem, you’ll find it here.

We take these issues seriously and follow our [curation process]({{'../curation/' | htmlBaseUrl(baseUrl)}}) to correct them.

---

## How to Stay Updated

You can subscribe to new data concern alerts through our feeds:

- [RSS Feed]({{"/feeds/rss/concerns.xml" | htmlBaseUrl(baseUrl)}})
- [Atom Feed]({{"/feeds/atom/concerns.xml" | htmlBaseUrl(baseUrl)}})

Need help subscribing? Try [Microsoft’s guide to RSS feeds](https://support.microsoft.com/en-us/office/what-are-rss-feeds-e8aaebc3-a0a7-40cd-9e10-88f9c1e74b97).

---

## Current Open Issues

{% set counter = 0 %}
{% for item in collections.known_errors | sort(false, false, 'data.discovered_date') %}
  {% if (item.data.title | length) and (item.data.log | length) < 1 %}
    {% set counter = counter + 1 %}
  {% endif %}
{% endfor %}

We are currently tracking **{{ counter }} known issues**.

Each item below includes a short summary and a link to more detail.

<hr>

{% set counter = 1 %}
{% for item in collections.known_errors | sort(false, false, 'data.discovered_date') %}
  {% if (item.data.title | length) and (item.data.log | length) < 1 %}
    <h3 id="{{ item.data.title | slugify }}">{{ counter }}. {{ item.data.title }}</h3>
    <p>{{ item.data.slug }}</p>
    <p><strong>Details:</strong> <a href="{{ item.url | htmlBaseUrl(baseUrl) }}">{{ item.data.title }}</a></p>
    <p><strong>Discovered:</strong> {{ item.data.discovered_date }}</p>
    {% if item.data.github %}
      <p><strong>GitHub Issue:</strong> {{ item.data.github }}</p>
    {% endif %}
    {% if item.data.log %}
      <p><strong>Curation Log:</strong> <a href="{{ ['/data/reliability/curation-log/', item.data.log] | join | htmlBaseUrl(baseUrl) }}">{{ item.data.log }}</a></p>
    {% endif %}
    {% set counter = counter + 1 %}
  {% endif %}
{% endfor %}



