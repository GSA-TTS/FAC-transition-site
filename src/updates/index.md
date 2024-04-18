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

The FAC received 5,403 single audit submissions in the last week of March. During this time, [our helpdesk](https://support.fac.gov/hc/en-us/requests/new) resolved more than 400 tickets, most via one-touch and in less than 24 hours.

<div class="grid-container">
    <div class="grid-row">
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/helpdesk_tickets_march.png" alt="bar chart of helpdesk tickets for the last week of March 2024" /></div>
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/helpdesk_tickets_march.png" alt="bar chart of response times to helpdesk tickets for the last week of March 2024" /></div>

As the rate of submissions tapers off, the team is returning its focus to feature delivery and site maintenance.

### Improving access to Tribal data

We're reviewing ticket [#2298](https://github.com/GSA-TTS/FAC/issues/2298). This will make Tribal data available to Federal partners via the FAC API. The team is also close to completing ticket [#3331](https://github.com/GSA-TTS/FAC/issues/3331), which will make the public portion of Tribal audits appropriately visible in search.

### March submission deadline

It's possible to [use the FAC API](https://github.com/GSA-TTS/fac-api-examples/tree/main/count-march-submissions) to predict what is coming in March. Here are plots of the submissions-per-day to the FAC from March of 2016 through 2022.

<div class="grid-container">
    <div class="grid-row">
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/updates/submissions-in-2016.png" alt="Histogram of submissions in 2016" /></div>
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/updates/submissions-in-2017.png" alt="Histogram of submissions in 2017" /></div>
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/updates/submissions-in-2018.png" alt="Histogram of submissions in 2018" /></div>
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/updates/submissions-in-2019.png" alt="Histogram of submissions in 2019" /></div>
    </div>
    <div class="grid-row">
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/updates/submissions-in-2020.png" alt="Histogram of submissions in 2020" /></div>
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/updates/submissions-in-2021.png" alt="Histogram of submissions in 2021" /></div>
        <div class="tablet:grid-col"><img src="{{ config.baseUrl }}assets/img/updates/submissions-in-2022.png" alt="Histogram of submissions in 2022" /></div>
        <div class="tablet:grid-col"></div>
    </div>
</div>

The Clearinghouse typically sees between 700 and 900 audit submissions per day at the end of March. In 2022, the Census Bureau saw close to 2000 audits submitted in one day.

We're doing many things to prepare for this submission volume. Since our launch, we've run two "copies" of the FAC to handle submissions. This means that, if two people are uploading audits to the FAC, one might get "FAC 1," and the other "FAC 2," so they both experience good web performance. As we go into March, we are increasing that number to 10, and can double that to 20 if necessary. This way, if 10 people are uploading data at the same time, they will each experience the same level of performance.

This is possible because the FAC is built on top of technologies like [cloud.gov](https://cloud.gov) and [Login.gov](https://login.gov).

### What's next?

We're keeping our focus on March. Looking ahead to the next few months, we'll be:

- Focusing on performance improvements and growing our team’s capacity for user support.

- Providing documentation on the migration of historical and how to use it.

- Improving search to support Federal oversight work and the public’s use of FAC data.

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
