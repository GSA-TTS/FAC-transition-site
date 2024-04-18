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

The Federal Audit Clearinghouse team works in the open. Our day-to-day task board can be found on [Github](https://github.com/orgs/GSA-TTS/projects/11/views/2) and prior updates are available in [our archive]({{ config.baseUrl }}updates/archive).

## Jump to

* [General updates](#general)
* Updates for [grantees and auditors](#grantees-and-auditors)
* Updates for [agencies](#agencies)

## Week of February 26, 2024

### March peak season

The FAC received 5,403 single audit submissions between March 25 and April 1. During this time, [our helpdesk](https://support.fac.gov/hc/en-us/requests/new) resolved more than 400 tickets, most via one-touch and in less than 24 hours.

<div class="grid-container">
    <div class="grid-row">
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/helpdesk/helpdesk_tickets_march.png" alt="bar chart of helpdesk tickets for the last week of March 2024" /></div>
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/helpdesk/helpdesk_response_march.png" alt="bar chart of response times to helpdesk tickets for the last week of March 2024" /></div>
    </div>

As the rate of submissions tapers off, the team is returning its focus to feature delivery and site maintenance.

### Tribal API

Tribal audits are now available to authorized users [via the API]({{ config.baseUrl }}api/tribal). Documentation on this process has been shared with interested agencies. If you would like to learn more about access to the API, please contact the FAC helpdesk.

### Advanced search

At the end of March, we experienced a performance outage for the FAC search. To resolve this, the team created [an advanced search option](https://app.fac.gov/dissemination/search/advanced/) to better serve audit resolution officials. A more [basic search option](https://app.fac.gov/dissemination/search/) is also still available for quicker confirmation of submitted reports.

During the outage, we uploaded [daily findings workbooks]({{ config.baseUrl }}status/findings) to support resolution work. This page will remain available until May.

### What's next?

#### Resubmission

The team is beginning the work on single audit resubmission. We're in the early stages of user interviews to determine the feature requirements. We're also talking with our agency partners about the resubmission process and how its triggered.

#### May code freeze

The FAC will undergo a code freeze from 5/17 - 5/31 to allow for security penetration testing. This testing is a required part of our authority to operate. During this time, we won't be making any updates to the FAC.

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
