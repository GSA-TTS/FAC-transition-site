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

## Week of February 5, 2024

The team has been focused on completing a migration of data from Census to GSA. This update covers mid-December to the current week.

### Historic data transfer

**Single Audit submissions from 2016–present are now available from the GSA FAC, and the Census Bureau is shutting down their data distribution.** Single Audits from prior years will appear in our search results. This is a major milestone, and future work will involve documenting the data migration, our continued curation of this data, and improvements to how this data is queried and used.

The migration caused some disruptions to service. With 10 times more data, our system has struggled to keep up with volume for some of our search filters. The most affected filter is the ALN search. Results for this filter show whether an audit contains findings (“Findings My ALN/Findings Other ALN”). Before the migration, this filter applied to small amounts of data, but after adding prior years, this began crashing the system. We've removed this feature to resolve the system strain. Our team is working on a replacement feature to handle the larger amount of data.


### What we delivered

We work in [an agile manner](https://asana.com/resources/agile-methodology). That means we have a long-term strategy, medium-term features we work to deliver, and make continuous improvement and bug fixes to the existing product. 

#### Customer experience
We achieved “helpdesk zero” in the last week of January. We had no questions come in on a workday, and we emptied our queue so we had no support questions left to answer. We have continued to empty our question queue on a near-daily basis.

The team currently replies to a ticket within 1.5 hours of receipt, and closes 75% of tickets within 8 hours. The helpdesk remains an excellent place to get timely support.

#### UX/Design

We completed user testing on navigation changes for [FAC.gov]({{ config.baseUrl }}). This validated a new site structure that will be easier for users to navigate.

The team finalized a research plan around audit resolution work. We began interviews with audit resolution officials, IG offices, and other users.

#### Submission improvements

We made multiple improvements to the submission experience. We use research and interviews with our users, as well as issues reported in the helpdesk, to guide this work.

- Added an SF-SAC summary report, allowing users to review the form data for in-progress and completed audits (PR [3025](https://github.com/GSA-TTS/FAC/pull/3025)).

- Significantly sped up PDF validation (PR [3057](https://github.com/GSA-TTS/FAC/pull/3057)).

- Submitters can now unlock an in-progress audit anytime up to the time of final submission (PR [3136](https://github.com/GSA-TTS/FAC/pull/3136)).

- Synchronization fixes between the audit state and submission checklist (PR [3144](https://github.com/GSA-TTS/FAC/pull/3144)).

- Users no longer have to log out and back in for changes to user access (e.g. changing the Auditee Certifying Official email address) to take effect. (PR [3194](https://github.com/GSA-TTS/FAC/pull/3194)). 

- Simplified the submission checklist after an audit is validated and locked for certification. (PR [3197](https://github.com/GSA-TTS/FAC/pull/3197)).

- Improved validations regarding reference numbers (PR [3221](https://github.com/GSA-TTS/FAC/pull/3221)).

- Added the ability to download Audit Report Packages and the SF-SAC for in-progress review (PR [3212](https://github.com/GSA-TTS/FAC/pull/3212)).

- Many search performance improvements (PR [3283](https://github.com/GSA-TTS/FAC/pull/3283)).

- Fixes around our new “testing” banner and pre-certification report generation (PRs [3261](https://github.com/GSA-TTS/FAC/pull/3261), [3326](https://github.com/GSA-TTS/FAC/pull/3326), [3333](https://github.com/GSA-TTS/FAC/pull/3333)).

- Improved validation error reporting around ALNs (PR [3230](https://github.com/GSA-TTS/FAC/pull/3230)). 

- Improved validation and error reporting around empty/zero loan balances (PR [3335](https://github.com/GSA-TTS/FAC/pull/3335)).

#### Intake, Search, and API

We also made multiple improvements to the audit search experience.

- A small update to SF-SAC summary exports (PR [3296](https://github.com/GSA-TTS/FAC/pull/3296)) that adds ALNs to the Federal Awards sheet.

- Fixed a performance bug within the FAC API (PR [3355](https://github.com/GSA-TTS/FAC/pull/3355)).

### What's next?

We're anticipating March to be a busy month. To support this, we'll be:

- **Focusing on performance improvements** and growing our team’s capacity for user support so that the auditors and auditees are well-supported during this time.

- **Providing documentation** regarding the migration of Census data to GSA and how to use it effectively.

- **Improving search**, both to support Federal oversight work as well as the public’s experience with FAC data.

- **Adding Tribal data access to the API** (PR [3359](https://github.com/GSA-TTS/FAC/pull/3359)) and writing documentation and legal agreements to accompany it.


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
