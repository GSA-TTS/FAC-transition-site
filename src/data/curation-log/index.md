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

We are currently tracking {{ collections.known_errors | length }} concerns in the data.

We include a brief, one-line sumamry of each error here, and full explanations can be found on the linked pages.

{% for item in collections.curation_log | sort(false, false, 'data.repair_date') %}
    {% if item.data.concern | length %}
                <h3 href="{{ item.data.slug | slugify }}">{{item.data.slug}}</h3>
                <p><b>Related curation issue</b>: <a href='{{ ["../concerns/", item.data.concern] | join }}'>{{- getKnownErrorTitle(collections.known_errors, item.data.concern) }}</a></p>
                <p><b>Decision record</b>: {% if item.data.github %}{{item.data.github}}{% else %}TBD{%endif%}</p>
                <p><b>Repair date</b>: {{item.data.repair_date}}</p>
    {% endif %}
{% endfor %}

