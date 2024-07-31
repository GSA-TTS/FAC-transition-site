---
layout: home.njk
title: Updates from the FAC
meta:
  name: Updates from the Federal Audit Clearinghouse
  description: Stay up-to-date on the FAC transition and read the latest on the single audit process.
include_survey: true
---

# Updates from the FAC

To help you understand our work, we’ll provide regular updates on the work we’re doing and what’s next. 

The Federal Audit Clearinghouse team works in the open. Our day-to-day task board can be found on [Github](https://github.com/orgs/GSA-TTS/projects/11/views/2) and prior updates are available in [our archive]({{ config.baseUrl }}updates/archive).

{% set count = 2 %}
{% for item in collections.updates | reverse %}
    {% if loop.index0 <= count %}
        {{ item.content | safe }}
    {% endif %}
{% endfor %}

## Previous updates

<ul>
{% for item in collections.updates | reverse %}
    {% if loop.index0 > count %}
        <li> <a href="{{item.url}}">{{ item.data.title }}</a></li>
    {% endif %}
{% endfor %}
</ul>

<!-- 
## Week of June 10


<h2 id="general" >General updates</h3>

{#
Updates are sorted with newest posts at the top. The "date" field in the update's front matter is what we use. The date in the filename is the date we create the file, and is never seen outside of the repo.
#}

<ul>
{% for item in collections.general | sort(true, true, "date") %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>

<h2 id="grantees-and-auditors">For grantees and auditors</h3>
<ul>
{% for item in collections.submitters | sort(true, true, "data.date") %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>


<h2 id="agencies">For Federal awarding agencies</h3>
<ul>
{% for item in collections.federal | sort(true, true, "time") %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>
-->