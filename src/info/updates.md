---
layout: home.njk
title: Updates from the FAC
meta:
  name: Updates from the Federal Audit Clearinghouse
  description: Stay up-to-date on the FAC transition and read the latest on the single audit process.
---

# Updates from the FAC

To help you understand our work through the transition, we’ll provide regular updates that talk about the work we’re doing and what’s next. 

The Federal Audit Clearinghouse team works in the open. Our day-to-day task board can be found on [Github[(https://github.com/orgs/GSA-TTS/projects/11/views/2)].

## Jump to

* [General updates](#general)
* Updates for [grantees and auditors](#grantees-and-auditors)
* Updates for [agencies](#agencies)

## Week of September 25, 2023

We're excited to see completed audits coming in and data exporting via the FAC API. That said, we know there have been some issues. We're doing our best to provide help center support for those as fast as possible.

Items of note:
- Some auditors and auditees experienced errors when trying to validate their UEIs. We identified the cause of the issue with sam.gov and should have it remediated next week.
- We are now collecting single audit submissions from Indian Tribes and Tribal organizations.
- Our engineering team improved the FAC API and closed out several bug tickets.

### What's next?

We know there are some features from the Census FAC that aren't available from the new FAC. As a team, we focused first on data intake and integrity. We will continue to iterate with our user communities to add features and improve the FAC.

Our goal is to be transparent and share what our areas of focus will be in the immediate- and medium-term.

Our next feature focus is [search](https://github.com/GSA-TTS/FAC/issues/2236). This will give Federal and public users the ability to find and download completed audits. 

After that, we expect to work on [user management](https://github.com/GSA-TTS/FAC/issues/1446) features so that submitters can [update the auditor/auditee certifying officials](https://github.com/GSA-TTS/FAC/issues/1446), and [audit resubmissions](https://github.com/GSA-TTS/FAC/issues/2301) and [email notifications](https://github.com/GSA-TTS/FAC/issues/1401) after that. You can follow our activity [backlog](https://github.com/orgs/GSA-TTS/projects/13/views/1) to keep track of what we expect to prioritize as needs and priorities shift.

<h3 id="general" >General updates</h3>

{#
Updates are sorted with newest posts at the top. The "date" field in the update's front matter is what we use. The date in the filename is the date we create the file, and is never seen outside of the repo.
#}

<ul>
{% for item in collections.general | sort(true, true, "date") %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>

<h3 id="grantees-and-auditors">For grantees and auditors</h3>
<ul>
{% for item in collections.submitters | sort(true, true, "data.date") %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>


<h3 id="agencies">For Federal awarding agencies</h3>
<ul>
{% for item in collections.federal | sort(true, true, "time") %}
    <li>{{item.content | safe }}</li>
{% endfor %}
</ul>
