---
layout: home.njk
title: Updates from the FAC
meta:
  name: Updates from the Federal Audit Clearinghouse
  description: Stay up-to-date on the FAC transition and read the latest on the single audit process.
include_survey: true
---

# Updates from the FAC

To help you understand our work through the transition, we’ll provide regular updates that talk about the work we’re doing and what’s next. 

The Federal Audit Clearinghouse team works in the open. Our day-to-day task board can be found on [Github](https://github.com/orgs/GSA-TTS/projects/11/views/2) and prior updates are available in [our archive]({{ config.baseUrl }}info/updates/archive).

## Jump to

* [General updates](#general)
* Updates for [grantees and auditors](#grantees-and-auditors)
* Updates for [agencies](#agencies)

## Week of December 18, 2023

This week we've made improvements to user access roles, search results, and Tribal data access.

### What we delivered

We work in [an agile manner](https://asana.com/resources/agile-methodology). That means we have a long-term strategy, medium-term features we work to deliver, and make continuous improvement and bug fixes to the existing product. 

#### Audit access management

We improved the user access experience for single audits. Users can now change both the auditor and auditee certifying official for a submission. 

Future improvements will allow for the addition, removal, and update of other contributors to a submission.

#### Search improvements

We added the ability to filter search results by auditee state. We also enhanced the results returned by the ALN filter, making it possible to see if a submission includes audit findings.

#### Tribal data access controls

We have implemented access controls for Tribal audit data, and notified NSACs and KMSALs. This data will now appear in searches for logged in Federal users who have access.

#### Summary reports 

We added the ability to download a summary report for an individual single audit submission. This combines all data from a single SF-SAC into one Excel document.

#### Pre-certification review

Auditors and auditees can now review a submission after it is validated and locked, but before it is certified.

### What's next?

#### Historic data migration

We continue to work with Census on the migration of historic data.

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
