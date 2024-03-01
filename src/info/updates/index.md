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

## Week of February 26, 2024

Our work through the end of February and into March is focused in three areas:

1. Improving search.
2. Improving access to Tribal data.
3. Preparing for the March submission deadline.

### Improving search

We added three new search filters, closed via ticket [#3407](https://github.com/GSA-TTS/FAC/issues/3407):

1. A set of filters for finding audits by *finding type*. 
2. A direct/passthrough funding selector.
3. A Y/N filter for whether an audit is on a major program.

There is more to come on search, and this is tracked in story [#3388](https://github.com/GSA-TTS/FAC/issues/3388). 

We have more work to do on search performance. In a perfect world, we would have had more time to work with the volume of historic data, optimizing code and features *before* making it available. We are doing the opposite: optimizing our code *after* the data was made available. If you encounter severe performance issues with any of these new features, please let us know via the support center. We are aware, and continue to iterate and improve in this area.

### Improving access to Tribal data

We are in final review of [#2298](https://github.com/GSA-TTS/FAC/issues/2290), which will make Tribal data available to Federal partners via API, and coming close to completion on [#3331](https://github.com/GSA-TTS/FAC/issues/3331), which will make the public portion of all Tribal audits appropriately visible in search.

### March submission deadline

It is possible to use the FAC API to predict what is coming in the month of March. Here are plots of the submissions-per-day to the FAC from March of 2016 through 2022.

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

The Clearinghouse typically sees between 700 and 900 audit submissions on March 30th; in 2022, Census saw close to 2000 audits submitted in one day.

We are doing a number of things that are largely invisible to users to prepare for this submission volume. Normally, we run two "copies" of the FAC to handle submissions. This means that, if two people are uploading audits to the FAC, one might get "FAC 1," and the other "FAC 2," so that they both get a performant experience. As we go into March, we are increasing that number to 10, and are prepared to double that to 20 if necessary. This way, if 10 people are uploading data at the same time, they will each experience the same level of performance. 

This is made possible because the FAC is built on top of technologies like [cloud.gov](https://cloud.gov) and [login.gov](https://login.gov), which are designed for exactly this kind of scenario.

### What's next?

We're keeping our eyes firmly on March. Looking over the next few months, we are:

- **Focusing on performance improvements** and growing our team’s capacity for user support so that the auditors and auditees are well-supported during this time.

- **Providing documentation** regarding the migration of Census data to GSA and how to use it effectively.

- **Improving search**, both to support Federal oversight work as well as the public’s experience with FAC data.

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
