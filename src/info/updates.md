---
layout: home.njk
title: Updates from the FAC
meta:
  name: Updates from the Federal Audit Clearinghouse
  description: Stay up-to-date on the FAC transition and read the latest on the single audit process.
---

# Updates from the FAC

To help you understand our work through the transition, we’ll provide regular updates that talk about the work we’re doing and what’s next. 

The Federal Audit Clearinghouse team works in the open. Our day-to-day task board can be found on [Github](https://github.com/orgs/GSA-TTS/projects/11/views/2).

## Jump to

* [General updates](#general)
* Updates for [grantees and auditors](#grantees-and-auditors)
* Updates for [agencies](#agencies)

## Week of September 25, 2023

We're excited to see completed audits coming in and data exporting via the FAC API. That said, we know there have been some issues. We're doing our best to provide help center support for those as fast as possible.

### Items of note:
- <p>Some auditors and auditees experienced errors when trying to validate their UEIs. We identified the cause of the issue with sam.gov and believe we have implemented a fix.</p>
- <p>We are now collecting single audit submissions from Indian Tribes and Tribal organizations.</p>
- <p>Our engineering team improved workbook validations and addressed a bug in the FAC API.</p>

### What's next?

We know that not every tool you are used to is currently available, and we are working quickly to add features in the coming months.

Our goal is to be transparent and share our areas of focus. You can see what features are coming up in [our backlog](https://github.com/orgs/GSA-TTS/projects/13/views/1). 

We are currently working on [search](https://github.com/GSA-TTS/FAC/issues/2236). This will give Federal and public users the ability to find and download completed audits. We track our [day-to-day work on our task board](https://github.com/orgs/GSA-TTS/projects/11).

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
