---
layout: sidenav.njk
title: Known errors
meta:
  name: Historic data curation
  description: Documentation about the data migration from Census to GSA.
---



# Caring for data concerns

The data contained within the FAC is a living thing. Whether it is an error in how data is validated, errors introduced as a result of system changes, or mistakes made on the part of auditors and grantees, the data needs to be tended and cared for. 

Here, we document the errors we know about in the FAC data. In brief, our protocol for repairing those errors is:

1. Document the issue
2. Discuss our repair strategy with stakeholders
3. Communicate the timeline to repair
4. Make the fix
5. Log the outcome

This page summarizes the known issues, and links to our strategies, timelines, and outcomes.

## Known concerns

We are currently tracking {{ collections.known_errors | length }} concerns in the data.

We include a brief, one-line sumamry of each error here, and full explanations can be found on the linked pages.

<div class="grid-container">
    {% for item in collections.known_errors | sort(false, false, 'data.order') %}
        {% if item.data.title | length %}
            <div class="grid-row">
                <div>
                    <h3 href="{{ item.data.title | slugify }}">{{item.data.title}}</h3>
                    <p>{{item.data.slug}}</p>
                    <p><b>Details</b>: <a href="{{item.url}}">{{item.data.title}}</a></p>
                    <p><b>Discovered</b>: {{item.data.discovered_date}}</p>
                    <p><b>Timeline to repair</b>: {% if item.data.timeline_to_repair %}{{item.data.timeline_to_repair}}{% else %}TBD{%endif%}</p>
                    <p><b>Github issue</b>: {% if item.data.github %}{{item.data.github}}{% else %}TBD{%endif%}</p>
                    <p><b>Log</b>: {% if item.data.log %}{{item.data.log}}{% else %}TBD{%endif%}</p>
                </div>
            </div>
        {% endif %}
    {% endfor %}
</div>
