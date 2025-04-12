---
layout: sidenav.njk
title: Known errors in FAC data
meta:
  name: Historic data curation
  description: Documentation about the data migration from Census to GSA.
---

# {{title}}

The data contained within the FAC is a living thing. Whether it is an error in how data is validated, errors introduced as a result of system changes, or mistakes made on the part of auditors and grantees, the data needs to be tended and cared for. 

Here, we document the errors we know about in the FAC data. We follow our [curation process](../curation/) when repairing data.

This page summarizes the known issues, and links to our strategies, timelines, and outcomes.

You can subscribe to an [RSS]({{"/feeds/rss/concerns.xml" | htmlBaseUrl(baseUrl)}}) or [Atom]({{"/feeds/atom/concerns.xml" | htmlBaseUrl(baseUrl)}}) feed to learn about new concerns as they are discovered. See [Microsoft's documentation for subscribing to feeds](https://support.microsoft.com/en-us/office/what-are-rss-feeds-e8aaebc3-a0a7-40cd-9e10-88f9c1e74b97) as a starting point.

## Known concerns

We are currently tracking {{ collections.known_errors | length }} concerns in the data.

We include a brief, one-line sumamry of each error here, and full explanations can be found on the linked pages.

{% for item in collections.known_errors | sort(false, false, 'data.discovered_date') %}
    {% if item.data.title | length %}
                <h3 href="{{ item.data.title | slugify }}">{{loop.index}}. {{item.data.title}}</h3>
                <p>{{item.data.slug}}</p>
                <p><b>Details</b>: <a href="{{ item.url | htmlBaseUrl(baseUrl) }}">{{item.data.title}}</a></p>
                <p><b>Discovered</b>: {{item.data.discovered_date}}</p>
                <p><b>Timeline to repair</b>: {% if item.data.timeline_to_repair %}{{item.data.timeline_to_repair}}{% else %}TBD{%endif%}</p>
                <p><b>Github issue</b>: {% if item.data.github %}{{item.data.github}}{% else %}TBD{%endif%}</p>
                <p><b>Log</b>: {% if item.data.log %}{{item.data.log}}{% else %}TBD{%endif%}</p>
    {% endif %}
{% endfor %}

