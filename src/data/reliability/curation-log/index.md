---
# Metadata
layout: home.njk
title: Log of Curation Actions
meta:
  name: Historic data curation
  description: A public record of data fixes and improvements made by the FAC team.
# Layout
eleventyComputed:
  eleventyNavigation:
    key: Curation log
    parent: Curation
in_page_nav: true
---

{% from "components/macros.njk" import getKnownErrorTitle %}

# {{title}}

This page lists the corrections and improvements we've made to audit data in the Federal Audit Clearinghouse (FAC).

Each entry below shows:
- A brief summary of the change
- When it was made
- Links to related issues or decision records (if applicable)

These actions are part of our ongoing effort to maintain the quality and integrity of FAC data.

---

## Why We Make These Updates

Sometimes we discover errors—either through our internal checks or from user feedback. When this happens, we investigate, document the issue, and, if needed, make a fix.

We also log these changes publicly here to be transparent about how the data evolves over time.

We are currently tracking **{{ collections.known_errors | length }} known issues**. For details about unresolved or open issues, visit our [Data Concerns page](../concerns/).

---

## Subscribe to Updates

You can subscribe to our data fixes using an RSS or Atom feed:

- [RSS Feed]({{"/feeds/rss/curation-log.xml" | htmlBaseUrl(baseUrl)}})
- [Atom Feed]({{"/feeds/atom/curation-log.xml" | htmlBaseUrl(baseUrl)}})

Need help subscribing? [Microsoft has a helpful guide](https://support.microsoft.com/en-us/office/what-are-rss-feeds-e8aaebc3-a0a7-40cd-9e10-88f9c1e74b97).

---

## Curation Log

{% for item in collections.curation_log | sort(false, false, 'data.repair_date') %}
    {% if item.data.concern | length %}
        <h3 id="{{ item.data.slug | slugify }}">{{ item.data.slug }}</h3>
        <p><strong>Related issue:</strong> <a href='{{ ["../concerns/", item.data.concern] | join }}'>{{ getKnownErrorTitle(collections.known_errors, item.data.concern) }}</a></p>
        {% if item.data.github %}
            <p><strong>Decision record:</strong> {{ item.data.github }}</p>
        {% endif %}
        <p><strong>Date fixed:</strong> {{ item.data.repair_date }}</p>
        <p><strong>Summary:</strong> {{ item.data.short }} (<a href="{{ item.url | htmlBaseUrl(baseUrl) }}">Full details</a>)</p>
    {% endif %}
{% endfor %}



