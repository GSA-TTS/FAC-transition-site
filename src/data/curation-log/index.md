---
layout: sidenav.njk
title: Log of curation actions
meta:
  name: Historic data curation
  description: Documentation about the data migration from Census to GSA.
---


{% from "components/macros.njk" import getKnownErrorTitle %}

# {{title}}


## Curation actions

This page documents the actions we have taken to curate the data contained within the FAC. We include a brief, one-line sumamry of each curation action here, and full explanations can be found on the linked pages.

Curation actions are often in response to concerns that are identified by the FAC team or members of the community. We are currently tracking {{ collections.known_errors | length }} concerns in the data. Data concerns are [documented separately](../concerns/).

You can subscribe to an [RSS]({{"/feeds/rss/curation-log.xml" | htmlBaseUrl(baseUrl)}}) or [Atom]({{"/feeds/atom/curation-log.xml" | htmlBaseUrl(baseUrl)}}) feed of our data curation actions. See [Microsoft's documentation for subscribing to feeds](https://support.microsoft.com/en-us/office/what-are-rss-feeds-e8aaebc3-a0a7-40cd-9e10-88f9c1e74b97) as a starting point.

{% for item in collections.curation_log | sort(false, false, 'data.repair_date') %}
    {% if item.data.concern | length %}
                <h3 href="{{ item.data.slug | slugify }}">{{item.data.slug}}</h3>
                <p><b>Related curation issue</b>: <a href='{{ ["../concerns/", item.data.concern] | join }}'>{{- getKnownErrorTitle(collections.known_errors, item.data.concern) }}</a></p>
                <p><b>Decision record</b>: {% if item.data.github %}{{item.data.github}}{% else %}TBD{%endif%}</p>
                <p><b>Repair date</b>: {{item.data.repair_date}}</p>
    {% endif %}
{% endfor %}

