---
layout: home.njk
title: Updates from the FAC
meta:
  name: Updates from the Federal Audit Clearinghouse
  description: Stay up-to-date on the FAC transition and read the latest on the single audit process.
---

# Updates from the FAC

To help you understand our work through the transition, we’ll provide regular updates that talk about the work we’re doing and what’s next. 

The Federal Audit Clearinghouse team works in the open. Our day-to-day task board can be found on [Github](https://github.com/orgs/GSA-TTS/projects/11/views/2) and prior updates are available in [our archive]({{ config.baseUrl }}info/updates/archive).

## Jump to

* [General updates](#general)
* Updates for [grantees and auditors](#grantees-and-auditors)
* Updates for [agencies](#agencies)

## Week of October 16, 2023

We released the GSA FAC as a minimal viable product. That means we are continuing to work and improve the FAC. [We work in an agile manner](https://asana.com/resources/agile-methodology).

### Items of note:
- <p>All UEIs are validating.</p>
- <p>We made significant improvements to workbook validations and their associated instructions.</p>

If you previously encountered challenges submitting your workbooks, we recommend you try again.
### What's next?

We are currently working on [search](https://github.com/GSA-TTS/FAC/issues/2236). We hope to demonstrate a prototype to Federal partners this week for early feedback. We anticipate having the ability to search for and download audits by the end of October.

Our pending feature priorities are:
- Adding the ability to unlock audit submissions to edit and then re-lock for certification instead of starting a new submission.
- Adding the ability to add, remove, or change auditors and certifying officials who are attached to the audit.
- Adding the ability to resubmit a previously submitted and completed audit.
- Adding email notifications to alert auditees and auditors that a step is ready for them to complete.

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
